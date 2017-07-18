// Fw190A5 light figher, only 2x MG151

main:
	
	self.name = "Focke-Wulf Fw190A5"
	self.role = "Hohenjager"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.8
	self.EQUIPMENT_MASS = 0.0 // kg, v/ light
	
	self.suppress_skinlist[1] = barrel_outboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 cannon151_inboard tag_barrel3::tag_barrel4 1::1 0.0::0.0 game.false::game.false
end game.true