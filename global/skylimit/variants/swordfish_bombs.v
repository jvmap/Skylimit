// Fairey swordfish 1xVickers 1x Lewis + bombs

main:
	self.name = "Fairey Swordfish MkII"
	self.nick = "Stringbag"
	self.role = "Light Bomber"
	self.team = allies
	self.flightmodel = "swordfish"
	self.modelid = "swordfish"
	self.servicegroup = "swordfish" // for sharing number of planes in obj matches
	
	self.ARMOR = 6.0
	self.EQUIPMENT_MASS = 200.0 // kg
	
	// increased tag_mult so it does more damage
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible vickers 130.0 -130.0 -60.0 20.0 "Lewis .303Cal" tag_reargun 1 ( -20.0 180.0 0.0) "skylimit/weapons/lewis.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun vickers -130.0 130.0 -90.0 90.0 mg tag_barrel::NULL 1::NULL 0.0::NULL game.false::NULL
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_big german_250kg pylon1
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon2
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon3
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon4
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon5
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon6
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_small german_50kg_grey pylon7
end game.true