sl_clouds1_grey
{
	qer_editorimage textures/skylimit/clouds/clouds1.tga
	sort opaque
	{
		map textures/skylimit/clouds/clouds1.tga
		rgbGen const 1.0 1.0 1.0
		alphaFunc GT0
		blendfunc blend
	}
}

sl_clouds1_lite
{
	qer_editorimage textures/skylimit/clouds/clouds1.tga
	//sort opaque
	{
		map textures/skylimit/clouds/clouds1.tga
		rgbGen const 1.0 0.9 0.8
		alphaFunc GT0
		blendfunc blend
		alphaGen dot 0.0 1000.0 //-0.1 100.0
	}
}

sl_clouds1_dark
{
	qer_editorimage textures/skylimit/clouds/clouds1.tga
	sort opaque
	{
		map textures/skylimit/clouds/clouds1.tga
		rgbGen const 0.8 0.6 0.6 //1.0 0.8 0.7
		alphaFunc GT0
		blendfunc blend
		alphaGen dot //-0.1 100.0
	}
	// silver lining
	//{
	//	map textures/skylimit/clouds/clouds1_edges.tga
	//	rgbGen const 0.1 0.07 0.05 //0.2 0.15 0.1
	//	alphaFunc GT0
	//	alphaGen dot -0.1 100.0
	//	blendfunc alphaadd
	//}
}

sl_clouds2_grey
{
	qer_editorimage textures/skylimit/clouds/clouds2.tga
	sort opaque
	{
		map textures/skylimit/clouds/clouds2.tga
		rgbGen const 1.0 1.0 1.0
		alphaFunc GT0
		blendfunc blend
	}
}

sl_clouds2_lite
{
	qer_editorimage textures/skylimit/clouds/clouds2.tga
	//sort opaque
	{
		map textures/skylimit/clouds/clouds2.tga
		rgbGen const 1.0 0.9 0.8
		alphaFunc GT0
		blendfunc blend
		alphaGen dot 0.0 1000.0 //-0.1 100.0
	}
}

sl_clouds2_dark
{
	qer_editorimage textures/skylimit/clouds/clouds2.tga
	sort opaque
	{
		map textures/skylimit/clouds/clouds1.tga
		rgbGen const 0.8 0.6 0.6 //1.0 0.8 0.7
		alphaFunc GT0
		blendfunc blend
		//alphaGen dot -0.1 100.0
	}
	// silver lining
	//{
	//	map textures/skylimit/clouds/clouds2_edges.tga
	//	rgbGen const 0.1 0.07 0.05 //0.2 0.15 0.1
	//	alphaFunc GT0
	///	alphaGen dot -0.1 100.0
	//	blendfunc alphaadd
	///	tcMod turb 0.02 0.02 0.02 0.02
	//}
}