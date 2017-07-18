// Ju 87D-7  2xMG151, MG81Z + bombs

main:
	
	self.name = "Junkers Ju 87 D-7"
	self.role = "Sturzkampfflugzeug"
	self.team = axis
	self.flightmodel = "Ju87D7"
	self.modelid = "ju87"
	self.servicegroup = "ju87" // for sharing number of planes in obj matches
	
	self.ARMOR = 3.0
	self.EQUIPMENT_MASS = 0.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible mg81 130.0 -130.0 -60.0 10.0 "MG81Z / 2x7.92mm" tag_reargun 2 ( -20.0 180.0 0.0) "skylimit/weapons/mg17.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -130.0 130.0 -90.0 90.0 mg151 tag_barrel_right::tag_barrel_left 1::1 0.0::0.0 game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_500kg bomb_500kg_europe pylon1
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_europe pylon2
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_europe pylon3
	
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon4 "bombrack3"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_europe spot2 bombrack3
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_europe spot1 bombrack3
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon5 "bombrack4"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_europe spot2 bombrack4
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_europe spot1 bombrack4
	
end game.true