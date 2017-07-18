// P-47D 8x cal50 + bombs

main:
	self.name = "Republic P-47D Thunderbolt"
	self.role = "Fighter/Bomber"
	self.team = allies
	self.flightmodel = "p47"
	self.modelid = "p47"
	self.servicegroup = "p47" // for sharing number of planes in obj matches
	
	self.EQUIPMENT_MASS = 0.0 // kg, additional armor
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun browning50 -180.0 180.0 -90.0 90.0 mg tag_barrel7::tag_barrel8 4::4 -0.01::0.01 game.false::game.false
	
	self.ARMOR = 1.0
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon1
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_250kg bomb_250kg_brown pylon2
end game.true