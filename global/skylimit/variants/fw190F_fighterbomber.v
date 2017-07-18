// Fw190F 2x MG151, 2x MG131 + bombs

main:
	self.name = "Focke-Wulf Fw190F8"
	self.role = "Jagdbomber"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 1.3 // additional armor
	self.EQUIPMENT_MASS = 1000.0 // kg
	
	self.suppress_skinlist[1] = barrel_outboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg131 -180.0 180.0 -90.0 90.0 mg131 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 cannon151_inboard tag_barrel3::tag_barrel4 1::1 0.0::0.0 game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addinventory boost 2
	
	// bombs
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon2 "bombrack1"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg spot2 bombrack1
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg spot1 bombrack1
	waitthread global/skylimit/plane_selection.scr::addrack "3rack" pylon3 "bombrack2"
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg spot2 bombrack2
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg spot1 bombrack2
end game.true