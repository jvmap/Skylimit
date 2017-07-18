// Bf109G6 1x 30mm, 2x MG151, 2x MG131

main:
	
	self.name = "Messerschmitt Bf109G-10"
	self.role = "Sturmjager"
	self.team = axis
	self.flightmodel = "Bf109G6"
	self.modelid = "bf109"
	self.servicegroup = "bf109" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.9
	self.EQUIPMENT_MASS = 1200.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg131 -180.0 180.0 -90.0 90.0 mg131 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 wingcannon151 tag_barrel3::tag_barrel4 1::1 0.01::( -0.01) game.false::game.false
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mk108 -180.0 180.0 -90.0 90.0 motorcannon108 tag_barrel0::NULL 1::NULL 0.0::NULL game.false::NULL
	
	waitthread global/skylimit/plane_selection.scr::addinventory boost 2
end game.true