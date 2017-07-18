// Fw190A-6 4x MG151, 2x MG17, torpedo

main:
	self.name = "Focke-Wulf Fw 190A-6"
	self.role = "Jagdtorpedotrager"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 1.0
	self.EQUIPMENT_MASS = 188.4 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -180.0 180.0 -90.0 90.0 mg17 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 cannon151_all tag_barrel3::tag_barrel4::tag_barrel5::tag_barrel6 1::1::1::1 0.0::0.0::( -0.01)::0.01 game.false::game.false::game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout torpedo torpedo pylon1
end game.true