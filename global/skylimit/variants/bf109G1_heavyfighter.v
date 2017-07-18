// Bf109G6 3x MG151, 2x MG17

main:
	
	self.name = "Messerschmitt Bf109G-1"
	self.role = "Sturmjager"
	self.team = axis
	self.flightmodel = "Bf109G6"
	self.modelid = "bf109"
	self.servicegroup = "bf109" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.9
	self.EQUIPMENT_MASS = 800.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -180.0 180.0 -90.0 90.0 mg17 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 allcannon151 tag_barrel0::tag_barrel3::tag_barrel4 1::1::1 0.0::0.01::( -0.01) game.false::game.false::game.false
end game.true