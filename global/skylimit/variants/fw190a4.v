// Fw190A-4 2x MG151, 2x MG-FF, 2x MG17, bombs

main:
	self.name = "Focke-Wulf Fw 190A-4"
	self.role = "Zerstorer"
	self.team = axis
	self.flightmodel = "Fw190A8"
	self.modelid = "fw190"
	self.servicegroup = "fw190" // for sharing number of planes in obj matches
	
	self.ARMOR = 1.0
	self.EQUIPMENT_MASS = 157.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg17 -180.0 180.0 -90.0 90.0 mg17 tag_barrel1::NULL 2::NULL 0.0::NULL game.true::NULL
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mg151 -180.0 180.0 -90.0 90.0 cannon151_inboard tag_barrel3::tag_barrel4 1::1 0.0::0.0 game.false::game.false
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun mgff -180.0 180.0 -90.0 90.0 mgff_outboard tag_barrel5::tag_barrel6 1::1 ( -0.01)::0.01 game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_brown pylon3
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_50kg bomb_50kg_brown pylon2
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon1
end game.true