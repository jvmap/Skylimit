// Ju 87 B-1 2xMG17, rear MG17 + bombs

main:
	
	self.name = "Junkers Ju 87 B-1"
	self.role = "Sturzkampfflugzeug"
	self.team = axis
	self.flightmodel = "Ju87B"
	self.modelid = "ju87"
	self.servicegroup = "ju87" // for sharing number of planes in obj matches
	
	self.ARMOR = 3.0
	self.EQUIPMENT_MASS = 0.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible mg17 130.0 -130.0 -60.0 10.0 "MG17 / 7.92mm" tag_reargun 1 ( -20.0 180.0 0.0) "skylimit/weapons/mg17.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -130.0 130.0 -90.0 90.0 mg tag_barrel_right::tag_barrel_left 1::1 0.0::0.0 game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_500kg bomb_500kg_desert pylon1
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon4 "bombrack3"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_desert spot2 bombrack3
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_desert spot1 bombrack3
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon5 "bombrack4"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_desert spot2 bombrack4
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_desert spot1 bombrack4
	
end game.true