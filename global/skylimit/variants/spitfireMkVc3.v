// Spitfire Mk Vc 4x 20mm, bombs

main:
	
	self.name = "Supermarine Spitfire Mk Vc"
	self.role = "Fighter"
	self.team = allies
	self.flightmodel = "spitfireV"
	self.modelid = "spitfire"
	self.servicegroup = "spitfire" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.67
	self.EQUIPMENT_MASS = 200.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun hispano -180.0 180.0 -90.0 90.0 cannon_all tag_barrel1::tag_barrel2 2::2 0.01::( -0.01) game.false::game.false
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon0
	
end game.true