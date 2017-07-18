// Ju87 2xMG17 + torpedo

main:
	
	self.name = "Junkers Ju87B"
	self.nick = "Stuka"
	self.role = "Sturztorpedobomber"
	self.team = axis
	self.flightmodel = "Ju87B"
	self.modelid = "ju87"
	self.servicegroup = "ju87" // for sharing number of planes in obj matches
	
	self.ARMOR = 6.0
	self.EQUIPMENT_MASS = 200.0 // kg
	
	// increased tag_mult so it does more damage
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible mg17 130.0 -130.0 -60.0 10.0 "MG17 / 7.92mm" tag_reargun 1 ( -20.0 180.0 0.0) "skylimit/weapons/mg17.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -130.0 130.0 -90.0 90.0 mg tag_barrel_right::tag_barrel_left 1::1 0.01::( -0.01) game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout torpedo torpedo pylon2
	waitthread global/skylimit/plane_selection.scr::addloadout torpedo torpedo pylon3
	
end game.true