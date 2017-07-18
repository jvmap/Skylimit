// Fw190A8 4x MG151, 2x MG131, bomber killer

main:
	self.name = "Focke-Wulf Fw190A8"
	self.role = "Zerstorer"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 1.1
	self.EQUIPMENT_MASS = 800.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg131 -180.0 180.0 -90.0 90.0 mg131 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 cannon151_all tag_barrel3::tag_barrel4::tag_barrel5::tag_barrel6 1::1::1::1 0.0::0.0::( -0.01)::0.01 game.false::game.false::game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addinventory boost 2
end game.true