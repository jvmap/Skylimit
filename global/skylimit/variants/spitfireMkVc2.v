// Spitfire Mk Vc 2x 20mm, 4x.303, bombs

main:
	
	self.name = "Supermarine Spitfire Mk Vc"
	self.role = "Fighter"
	self.team = allies
	self.flightmodel = "spitfireV"
	self.modelid = "spitfire"
	self.servicegroup = "spitfire" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.67
	self.EQUIPMENT_MASS = 156.0 // kg
	
	self.suppress_skinlist[1] = barrel_inboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun browning303 -180.0 180.0 -90.0 90.0 mg303 tag_barrel3::tag_barrel4::tag_barrel5::tag_barrel6 1::1::1::1 0.01::( -0.01)::0.02::( -0.02) game.false::game.false::game.false::game.false
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun hispano -180.0 180.0 -90.0 90.0 cannon_outboard tag_barrel1::tag_barrel2 1::1 0.01::( -0.01) game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon0
	
end game.true