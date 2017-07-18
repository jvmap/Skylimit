// Bf109G6 1x MG151, 2x MG17 + bombs

main:
	
	self.name = "Messerschmitt Bf109G-1"
	self.role = "Jagdbomber"
	self.team = axis
	self.flightmodel = "Bf109G6"
	self.modelid = "bf109"
	self.servicegroup = "bf109" // for sharing number of planes in obj matches
	
	self.ARMOR = 1.0
	self.EQUIPMENT_MASS = 500.0 // kg, very light
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -180.0 180.0 -90.0 90.0 mg17 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 motorcannon151 tag_barrel0::NULL 1::NULL 0.0::NULL game.false::NULL	
	
	// bombs
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_big german_250kg pylon0
end game.true