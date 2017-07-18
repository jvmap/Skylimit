// just do nothing, torso handles all
state STAND
{
	entrycommands
	{
		moveposflags "standing"
		modheight "stand"
		movementstealth "1.0"
	}
	
	legs
	{
		rifle_stand_idle : default
	}
}