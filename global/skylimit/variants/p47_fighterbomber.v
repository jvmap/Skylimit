// P47 8x cal50 + bombs

main:
	self.name = "Republic P-47D Thunderbolt"
	self.nick = "Jug"
	self.role = "Fighter / Bomber"
	self.team = allies
	self.flightmodel = "p47"
	self.modelid = "p47"
	self.servicegroup = "p47" // for sharing number of planes in obj matches
	
	self.EQUIPMENT_MASS = 600.0 // kg, additional armor
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun browning50 -180.0 180.0 -90.0 90.0 mg tag_barrel7::tag_barrel8 4::4 -0.01::0.01 game.false::game.false
	
	self.ARMOR = 1.5
	
	// bombs
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon1 NULL
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon2 NULL
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon3 NULL
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon4 NULL
end game.true