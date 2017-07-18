// Ju 87 D-1 2xMG17, MG 81Z + bombs

main:
	
	self.name = "Junkers Ju 87 D-1"
	self.role = "Sturzkampfflugzeug"
	self.team = axis
	self.flightmodel = "Ju87D1"
	self.modelid = "ju87"
	self.servicegroup = "ju87" // for sharing number of planes in obj matches
	
	self.ARMOR = 3.0
	self.EQUIPMENT_MASS = 0.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible mg81 130.0 -130.0 -60.0 10.0 "MG81Z / 2x7.92mm" tag_reargun 2 ( -20.0 180.0 0.0) "skylimit/weapons/mg17.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -130.0 130.0 -90.0 90.0 mg tag_barrel_right::tag_barrel_left 1::1 0.0::0.0 game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_1000kg bomb_1000kg_desert pylon1
	
end game.true