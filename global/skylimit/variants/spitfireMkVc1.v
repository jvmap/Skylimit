// Spitfire Mk Vc 8x.303, bombs

main:
	
	self.name = "Supermarine Spitfire Mk Vc"
	self.role = "Fighter"
	self.team = allies
	self.flightmodel = "spitfireV"
	self.modelid = "spitfire"
	self.servicegroup = "spitfire" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.67
	self.EQUIPMENT_MASS = 112.0 // kg
	
	self.suppress_skinlist = barrel_inboard::barrel_outboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun browning303 -180.0 180.0 -90.0 90.0 allmg303 tag_barrel3::tag_barrel4::tag_barrel5::tag_barrel6::tag_barrel9::tag_barrel10 2::2::1::1::1::1 0.01::( -0.01)::0.02::( -0.02)::0.01::( -0.01) game.false::game.false::game.false::game.false::game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon0
	
end game.true