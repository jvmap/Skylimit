// Bf109G6 1x 30mm, 2x MG131

main:
	
	self.name = "Messerschmitt Bf109G-10"
	self.role = "Jager"
	self.team = axis
	self.flightmodel = "Bf109G6"
	self.modelid = "bf109"
	self.servicegroup = "bf109" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.7
	self.EQUIPMENT_MASS = 350.0 // kg, very light
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg131 -180.0 180.0 -90.0 90.0 mg131 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mk108 -180.0 180.0 -90.0 90.0 motorcannon108 tag_barrel0::NULL 1::NULL 0.0::NULL game.false::NULL	
end game.true