// Fw190A8 4x MG131

main:
	
	self.name = "Focke-Wulf Fw190A8"
	self.role = "Jager"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.8
	self.EQUIPMENT_MASS = 0.0 // kg, v/ light
	
	self.suppress_skinlist[1] = barrel_outboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg131 -180.0 180.0 -90.0 90.0 mg131_all tag_barrel1::tag_barrel3::tag_barrel4 2::1::1 0.0::0.0::0.0 game.true::game.false::game.false
end game.true