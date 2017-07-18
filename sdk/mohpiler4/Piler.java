// MohPiler 4
// by jv_map

// put files in /input folder, then do java Piler
// an /output folder should be created automatically

/*

	Supported commands:
	//#SKIP		-> skips next line (not added in output file)
	//#INSERT	-> piler only cmd (just put through)
	//#INLINE 	-> next thread def will be an inline thread (may not have internal 'end's)
*/

import java.io.*;

public class Piler
{
	static final int MAX_STACK_LEVEL = 10;
	
	static final int MAX_NUM_THREAD_DEFS = 512;
	static final int MAX_NUM_LINES_PER_THREAD = 512;
	static final String LOCAL_REPLACEMENT_PREFIX = "local.__STK";
	static final String LOCAL_REPLACEMENT_MIDFIX = "VAR";

	static String[] threads;
	static String[][] rawThreadText;
	static int curThreadID;
	
	static String[] funcs;
	static String[] funcArgs;
	static String[] funcReturn;
	static int curFuncID;
	
	public static void main (String[] args)
	{
		File input = new File("input");
		
		// make the threads array
		threads = new String[MAX_NUM_THREAD_DEFS];
		curThreadID = -1;
		rawThreadText = new String[MAX_NUM_THREAD_DEFS][MAX_NUM_LINES_PER_THREAD];
		
		funcs = new String[MAX_NUM_THREAD_DEFS];
		funcArgs = new String[MAX_NUM_THREAD_DEFS];
		funcReturn = new String[MAX_NUM_THREAD_DEFS];
		curFuncID = -1;
		
		if (input.exists() && input.isDirectory())
		{		
			readFolder(input);
			pileFolder(input);
		}
		else
		{
			System.out.println ("Folder '/input' does not exist.");
		}
	}
	
	static void readFolder(File input)
	{
		File[] files = input.listFiles();
		File curFile;
		
		// first skim though all scripts to find the THREAD defs
		// this makes the threads and rawThreadText arrays for searching
		
		for(int i = 0; i < files.length; i++)
		{
			curFile = files[i];
			if(curFile.isDirectory())
			{
				readFolder(curFile);
			}
			else
			{
				read(curFile);
			}
		}
	}
	
	static void pileFolder(File input)
	{
		File[] files = input.listFiles();
		File curFile, curOutputFile;
		
		// now properly pile all files
		for(int i = 0; i < files.length; i++)
		{
			curFile = files[i];
			if(curFile.isDirectory())
			{
				pileFolder(curFile);
			}
			else
			{
				curOutputFile = new File("output\\" + scriptFileName(curFile));
				curOutputFile.getParentFile().mkdirs();
				pile(curFile,curOutputFile);
			}
		}
	}
	
	static String scriptFileName(File aFile)
	{
		// internal thread name prefix
		String prefix = aFile.toString();
		
		// remove 'input'
		prefix = prefix.substring(6,prefix.length());
		
		// flip slashes
		prefix = prefix.replace('\\','/');
		
		return prefix;
	}
	
	static void read(File theFile)
	{
		String prefix = scriptFileName(theFile);
		
		try
		{
			BufferedReader fReader = new BufferedReader(new FileReader(theFile));
			
			int inThread = -2;
			
			boolean previousLineWasPossibleThreadDef = false;
			
			String previousLineThreadDef = "";
			String threadName = "";
			String line, lineNotTrimmed;
			String fReturn;
			
			try
			{
				while(true)
				{
					line = fReader.readLine();
					
					// end of file
					if (line == null)
					{
						break;
					}

					lineNotTrimmed = line;
					line = line.trim();
					
					// check for //#INLINE
					if(inThread == -2 && line.startsWith("//#INLINE"))
					{
						inThread++;
					}
					else if(inThread == -1)
					{
						// verify if we're really in thread
						if(line.endsWith(":"))
						{
							// yes
							
							// thread header
							String[] words = line.split("\\W");
							threadName = words[0]; //.substring(0,words[0].length() - 1);
							
							curThreadID++;
							threads[curThreadID] = prefix + "::" + threadName;
							
							System.out.println ("Found INLINE thread: '" + prefix + "::" + threadName + "'");
							
							inThread++;
						}
						else
						{
							// no
							inThread = -2;
						}
					}
					
					if(inThread >= 0)
					{
						// stash entire thread
						rawThreadText[curThreadID][inThread] = line;
						
						//System.out.println ("Set rawThreadText[" + curThreadID + "][" + inThread + "] = " + line);
						
						inThread++;
						
						if(line.startsWith("end ") || line.equals("end"))
						{
							if( !lineNotTrimmed.startsWith("end"))
							{
								System.out.println ("WARNING! Possible 'end' inside thread '" + threadName + "' in " + theFile);
							}
							
							// done
							inThread = -2;
						}
						
						previousLineWasPossibleThreadDef = false;
					}
					else
					{
						// check for 'one-liners'
						if(previousLineWasPossibleThreadDef)
						{
							if(line.startsWith("end") && !line.equals("end"))
							{
								curFuncID++;
								
								fReturn = line.substring(4);
								if(fReturn.equals (""))
								{
									fReturn = "NIL";
								}
								
								//System.out.println ("function line '" + line + "', file: " + theFile);
								
								String[] words = previousLineThreadDef.split("\\s+");
								funcs[curFuncID] = prefix + "::" + words[0];
								if(previousLineThreadDef.length() - 1 > words[0].length() + 1)
								{
									funcArgs[curFuncID] = previousLineThreadDef.substring(words[0].length() + 1,previousLineThreadDef.length() - 1);
								}
								funcReturn[curFuncID] = fReturn;
								
								System.out.println ("Found function '" + words[0] + "', args: '" + funcArgs[curFuncID] + "', returns: '" + fReturn + "' in " + theFile);
							}
							previousLineWasPossibleThreadDef = false;
						}
						else if(line.endsWith(":"))
						{
							previousLineWasPossibleThreadDef = true;
							previousLineThreadDef = new String(line);
						}
						else
						{
							previousLineWasPossibleThreadDef = false;
						}
					}
				}
				
				fReader.close();
			}
			catch(IOException f)
			{
				System.out.println ("I/O Error: '" + f.getMessage() + "'");
			}
		}
		catch (FileNotFoundException e)
		{
			System.out.println ("File Not Found: '" + e.getMessage() + "'");
		}
	}

	static void pile(File theFile, File outputFile)
	{
		String prefix = scriptFileName(theFile);
		
		String outputLine;
		
		// make the output printer
		try
		{
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(outputFile)));
			
			out.println ("// automatically generated by MOH Piler 4");
			out.println ("// (c) 2006 Jeroen Vrijkorte a.k.a. jv_map");
			out.println();
			
			try
			{
				BufferedReader fReader = new BufferedReader(new FileReader(theFile));
				
				boolean skipNext = false;
			
				String line;
				
				try
				{
					while(true)
					{
						line = fReader.readLine();
						
						// end of file
						if (line == null)
						{
							break;
						}
						
						if(skipNext)
						{
							skipNext = false;
							continue;
						}
						
						line = line.trim();
						
						//#SKIP		-> skips next line (not added in output file)
						//#INSERT	-> piler only cmd (just put through)
						// automatically replace inline thread and func calls
						
						if(line.indexOf("waitthread ") != -1)
						{
							// try functional piling
							if (!functionSubstitution(theFile,line,out))
							{
								// hardest case
								// have to try to substitute the thread here
								threadSubstitution(theFile,line,out,0);
							}
						}
						else if(line.startsWith("//#SKIP"))
						{
							skipNext = true;
						}
						else if(line.startsWith("//#INSERT"))
						{
							// put through
							out.println(line.substring(7));
						}
						else
						{
							// put through
							out.println(line);
						}
					}
					
					fReader.close();
				}
				catch(IOException f)
				{
					System.out.println ("I/O Error: '" + f.getMessage() + "'");
				}
			}
			catch (FileNotFoundException e)
			{
				System.out.println ("File Not Found: '" + e.getMessage() + "'");
			}
			out.close();
		}
		catch(IOException e)
		{
			System.out.println ("I/O Error when writing to output file: " + e.getMessage());
		}
	}
	
	// recursive!
	static void threadSubstitution(File outputScript, String line, PrintWriter out, int stackLevel)
	{
		if(stackLevel > MAX_STACK_LEVEL)
		{
			System.out.println ("MAX_STACK_LEVEL (" + MAX_STACK_LEVEL + ") reached on line '" + line + "' (" + outputScript + "), not piling.");
			out.println ("//MAX_STACK_LEVEL (" + MAX_STACK_LEVEL + ") reached on line '" + line + "' (" + outputScript + "), not piling.");
			return;
		}
		
		// split in words
		String[] words = line.split("\\s+");
		
		String self;
		String threadName;
		String argString;
		
		//System.out.println ("Trying to substitute '" + line + "'");
		
		if(words[0].equals("waitthread"))
		{
			self = "self"; // how straightforward
			argString = line.substring(words[0].length() + words[1].length() + 1).trim();
			threadName = words[1];
		}
		else if(words[1].equals("waitthread"))
		{
			self = words[0];
			argString = line.substring(words[0].length() + words[1].length() + words[2].length() + 2).trim();
			threadName = words[2];
		}
		else
		{
			// have a prob (probably a function call)
			//System.out.println ("Failed thread substition for line '" + line + "'");
			out.println (line); // put through
			return;
		}
		
		// use full threadName
		threadName = fullThreadName(outputScript, threadName);
		
		String[] callerArgs = parseArguments(argString);
		/*
		// dump callerArgs
		System.out.println ("CALLER ARG DUMP '" + line + "'; '" + argString + "'");
		for(int i = 0 ; i < callerArgs.length; i++)
		{
			System.out.println ("arg#" + i + ": '" + callerArgs[i] + "'");
		}
		System.out.println ("CALLER ARG DUMP DONE");
		*/
		// find the thread's raw data
		try
		{
			String[] threadRawData = getThreadData(threadName);
			String[] newRawData = new String[threadRawData.length];
		
			System.out.println ("Substituting thread " + threadName + " to script " + outputScript + " at stacklevel " + stackLevel);
		
			String rawLine, varName;
			String[] rawWords;
			String[] replaceFind, replaceReplace;
			int replaceIndex = 0;
			boolean nextIsPartVarName = false;
			
			final int MAX_REPLACEMENTS = 1024;
			
			replaceFind = new String[MAX_REPLACEMENTS];
			replaceReplace = new String[MAX_REPLACEMENTS];
			
			int numargs = 0;
			int lastline = -1;
			
			File inputScript = scriptFile(outputScript,line);
			
			// make a substitution table
			// replace all local variables by local.__1, local.__2... etc
			for(int i = 0; i < threadRawData.length; i++)
			{
				rawLine = threadRawData[i];
				
				if(rawLine == null)
				{
					break; // end of thread
				}
				
				lastline++;
				
				//System.out.println ("Accessing rawdata #" + i + " -> " + rawLine + ", thread: " + threadName);
				
				// find local variables
				rawWords = rawLine.split ("[\\W&&[^\\.]]"); // non-word splitter
				
				for(int j = 0; j < rawWords.length; j++)
				{
					if(rawWords[j].startsWith("local."))
					{
						// found a variable name :)
						// add this to the replacement table (if it isn't in already)
						//varName = rawWords[j];
						
						varName = rawWords[j].substring(6); // without 'local.'
						String[] varExts = varName.split("\\.");
						varName = "local." + varExts[0];
						
						replaceIndex = replaceExpandTable(varName, replaceFind, replaceReplace, replaceIndex, stackLevel);
					}
				}
				
				if(i == 0)
				{
					// have checked the thread header line
					numargs = replaceIndex;
				}
			}
			
			// apply the replacement table to the rawdata
			String newRawLine = "";
			String[] newRawWords;
			for(int i = 0; i < threadRawData.length; i++)
			{
				rawLine = threadRawData[i];
				
				if(rawLine == null)
				{
					break;
				}
				
				newRawLine = rawLine;
				newRawLine = replaceAllWords(newRawLine, replaceFind, replaceReplace);
				newRawData[i] = newRawLine;
			}
			
			// add a message
			out.println ("//>>> inlining '" + threadName + "'...");
			
			// add the input data
			for(int i = 0; i < numargs; i++)
			{
				if(i < callerArgs.length && !callerArgs[i].equals(""))
				{
					out.println (LOCAL_REPLACEMENT_PREFIX + stackLevel + LOCAL_REPLACEMENT_MIDFIX + i + " = " + callerArgs[i]);
				}
				else
				{
					out.println (LOCAL_REPLACEMENT_PREFIX + stackLevel + LOCAL_REPLACEMENT_MIDFIX + i + " = NIL");
				}
			}
			
			// add the rawlines
			for(int i = 1; i < lastline; i++)
			{
				//System.out.println ("Rawlining '" + newRawData[i] + "'");
				
				// inline any inline 'nested' thread calls
				if(newRawData[i].indexOf("waitthread ") != -1)
				{
					//System.out.println ("Trying to subsubstitute '" + newRawData[i] + "'");
					threadSubstitution(inputScript, newRawData[i], out, stackLevel + 1);
				}
				else
				{
					out.println (newRawData[i]);
				}
			}
			
			// clear all local data
			for(int i = 0; i < replaceIndex; i++)
			{
				out.println (LOCAL_REPLACEMENT_PREFIX + stackLevel + LOCAL_REPLACEMENT_MIDFIX + i + " = NIL");
			}
			
			// add a message
			out.println ("//<<< finished inlining '" + threadName + "'.");
		}
		catch(ThreadNotFoundException e)
		{
			out.println (line); // put through
		}
	}
	
	static String replaceAllWords (String str, String[] find, String[] replace)
	{
		char c[] = new char[1];
		String cstr;
		String newString = "";
		String f,r;
		
		String current_word = "";
		
		boolean passed_dot = false;
		
		for(int i = 0; i <= str.length(); i++)
		{
			if(i < str.length())
			{
				c[0] = str.charAt(i);
				cstr = new String (c);
			
				//System.out.println ("cstr: '" + cstr + "', " + cstr.matches("\\W") + cstr.equals("\\.") + current_word.equals(""));
			}
			else
			{
				cstr = "";
			}
			
			if(cstr.equals("") || cstr.matches("\\W"))
			{
				if( !passed_dot && cstr.equals("."))
				{
					passed_dot = true;
					current_word += cstr;
				}
				else
				{
					if(!current_word.equals(""))
					{
						passed_dot = false;
						
						//System.out.println ("Checking '" + current_word + "'");
						// word boundary, finish (and replace) current word
						for(int j = 0; j < find.length; j++)
						{
							f = find[j];
							
							r = replace[j];
							
							if(f == null)
							{
								break;
							}
							
							//System.out.println ("Checking '" + current_word + "' against '" + f + "'");
							
							if(current_word.equals(f))
							{
								current_word = r;
								//System.out.println ("Stop Checking '" + current_word + "'");
								break; // can never match 2
							}
						}
						
						newString += current_word;
						current_word = "";
					}
					newString += cstr;
				}
			}
			else
			{
				current_word += cstr;
			}
		}
		newString += current_word;
		//System.out.println ("Replaced '" + str + "' by '" + newString + "'");
		
		return newString;
	}
	
	static int replaceExpandTable (String addMe, String[] find, String[] replace, int index, int stackLevel)
	{
		String f,r;
		
		boolean alreadyAdded = false;
		
		for(int i = 0; i < index; i++)
		{
			f = find[i];
			
			if(f.equals(addMe))
			{
				// have to do nothing
				alreadyAdded = true;
				break;
			}
		}
		
		if (!alreadyAdded)
		{
			// add it
			find[index] = new String(addMe);
			
			// determine a replacement
			replace[index] = LOCAL_REPLACEMENT_PREFIX + stackLevel + LOCAL_REPLACEMENT_MIDFIX + index;
			
			//System.out.println ("set replacement '" + find[index] + "' -> '" + replace[index] + "'");
			
			index++;
		}
		
		return index;
	}
	
	static File scriptFile (File curScript, String threadcall)
	{
		File out;
		String fString[], cString[];
		String pathStr = "error", paththrStr;
		
		if(threadcall.indexOf("::") == -1)
		{
			out = curScript;
		}
		else
		{
			fString = threadcall.split("\\s+");
			for(int i = 0; i < fString.length; i++)
			{
				if(fString[i].equals ("waitthread"))
				{
					paththrStr = fString[i + 1];
					cString = paththrStr.split ("::");
					pathStr = cString[0];
					break;
				}
			}
		
			// flip slashes
			//System.out.println ("pathStr: " + pathStr);
			pathStr = pathStr.replace('/','\\');
			
			// add 'input'
			pathStr = "input\\" + pathStr;
			
			out = new File(pathStr);
		}
		return out;
	}
	
	static String fullThreadName (File inputScript, String threadName)
	{
		if(threadName.indexOf("::") == -1)
		{
			threadName = scriptFileName(inputScript) + "::" + threadName;
		}
		
		return threadName;
	}
	
	static String[] getThreadData (String threadName) throws ThreadNotFoundException
	{
		String[] threadRawData = new String[MAX_NUM_LINES_PER_THREAD];
		
		boolean found = false;
		
		// find index
		for(int i = 0; i <= curThreadID; i++)
		{
			if(threads[i].equals(threadName))
			{
				// found it :D
				//System.out.println ("Getting threadRawData " + i + " for thread " + threadName);
				threadRawData = rawThreadText[i];
				found = true;
				break;
			}
		}
		
		if (!found)
		{
			//System.out.println ("Thread '" + threadName + "' not found.");
			throw(new ThreadNotFoundException());
		}
		
		return threadRawData;
	}
	
	static String[] parseArguments (String in)
	{
		char c;
		
		int parens_lvl = 0;
		boolean in_string = false;
		boolean escape = false;
		boolean whitespace;
		boolean skip_me;
		
		final int MAXARGS = 32;
		
		String[] args = new String[MAXARGS];
		
		args[0] = "";
		
		int argid = 0;
		
		boolean arg_has_nonwhitespace = false;
		
		for(int i = 0; i < in.length(); i++)
		{
			c = in.charAt(i);
			
			String c_str = Character.toString(c);
			
			whitespace = false;
			skip_me = false;
			
			if(escape)
			{
				escape = false;
			}
			else
			{
				if(c_str.matches("\\\\"))
				{
					escape = true;
				}
				else if(c == '"')
				{
					in_string = !in_string;
				}
				else if (!escape && !in_string)
				{
					if(c == '(')
					{
						parens_lvl++;
						//skip_me = true;
					}
					else if(c == ')')
					{
						parens_lvl--;
						
						if(parens_lvl < 0)
						{
							skip_me = true;
							break;
						}
						
						//skip_me = true;
					}
					else if(parens_lvl == 0 && c_str.matches("\\s"))
					{
						whitespace = true;
					}
				}
			}
			
			//System.out.println ("Char: '" + c_str + "', whitespace: " + whitespace + 
			//		", arg_has_nonwhitespace: " + arg_has_nonwhitespace + ", argid: " + argid);
			
			if(whitespace && arg_has_nonwhitespace)
			{
				argid++;
				args[argid] = "";
			}
			else
			{
				if ( !skip_me)
				{
					args[argid] += c;
				}
				
				if ( !c_str.matches("\\s"))
				{
					arg_has_nonwhitespace = true;
				}
			}
		}
		args = arrayTrim(args,argid + 1);
		
		return args;
	}
	
	static String simpleReplace (String wString, String find, String replace)
	{
		String current_word = "";
		char c[] = new char[1];
		String cstr;
		String out = "";
	
		for(int i = 0; i < wString.length(); i++)
		{
			c[0] = wString.charAt(i);
			cstr = new String(c);
			
			if(cstr.matches ("\\W"))
			{
				// replace current_word
				if(current_word.equals(find))
				{
					current_word = new String(replace);
				}
				out += current_word + cstr;
				current_word = "";
			}
			else
			{
				current_word += cstr;
			}
		}
		
		//System.out.println ("simpleReplace '" + wString + "', finding '" + find + "' replacing w/ '" + replace + "' -> '" + out + "'");
		
		return out;
	}
	
	static boolean functionSubstitution(File theFile, String line, PrintWriter out)
	{	
		String sThreadName = line.split("waitthread ")[1].split(" ")[0];
		//System.out.println ("line: '" + line + "', sThreadName: '" + sThreadName + "'");
		String threadName = fullThreadName(theFile,sThreadName);
		
		boolean found = false;
		int findex = 0;
		
		//System.out.println ("Trying func subst '" + threadName + "'");
		
		for(int i = 0; i <= curFuncID; i++)
		{
			if(funcs[i].equals(threadName))
			{
				// found it :D
				found = true;
				findex = i;
				break;
			}
		}
		
		if(found)
		{
			String argString = line.split(sThreadName)[1].trim();
			
			//System.out.println ("argString: '" + argString + "'");
			
			// substitute
			String[] callerArgs = parseArguments(argString);
			String[] defArgs = funcArgs[findex].split(" ");
			
			String fReturn = funcReturn[findex];
			
			String[] find = new String[defArgs.length];
			String[] replace = new String[defArgs.length];
			
			String totalReplacementString = "waitthread " + sThreadName;
			
			// make a replacement table
			for(int i = 0; i < defArgs.length; i++)
			{
				find[i] = defArgs[i];
				replace[i] = callerArgs[i];
				//System.out.println ("arg#" + i + ": '" + replace[i] + "'");
				totalReplacementString += " " + replace[i];
			}
			
			// replace self
			String[] self = line.split(" waitthread")[0].split("[[\\W&&[^\\.]]&&[^=]]");
			String sself;
			if(self.length >= 1)
			{
				sself = self[self.length - 1];
				String[] linesplit = line.split(" waitthread");
				//System.out.println (linesplit[0]);
				String lastword = line.split(" waitthread")[0];
				char[] lastchar = new char[1];
				lastchar[0] = lastword.charAt(lastword.length()-1);
				if((new String(lastchar)).matches("\\w"))
				{
					//System.out.println ("true");
					totalReplacementString = self[self.length - 1] + " " + totalReplacementString;
				}
				else
				{
					sself = "self";
				}
			}
			else
			{
				sself = "self";
			}
			
			// replace
			fReturn = replaceAllWords (fReturn, find, replace);
			fReturn = simpleReplace(fReturn, "self", sself);
			
			// print out
			String result = line.replace(totalReplacementString,fReturn);
			
			//System.out.println ("line: '" + line + "'");
			//System.out.println ("totalReplacementString: '" + totalReplacementString + "'");
			//System.out.println ("fReturn: '" + fReturn + "'");
			
			System.out.println ("Func replace line: '" + line + "' -> '" + result + "'");
			
			out.println (result);
		}
		
		return found;
	}
	
	static String[] arrayTrim(String[] arr, int newLength)
	{
		if(arr.length <= newLength)
		{
			return arr;
		}
		else
		{
			String[] newArr = new String[newLength];
			
			for(int i = 0; i < newLength; i++)
			{
				newArr[i] = arr[i];
			}
			
			return newArr;
		}
	}
}