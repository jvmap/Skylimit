// Fairey Swordfish MkII 1xVickers 1x Lewis + bombs

main:
	self.name = "Fairey Swordfish Mk II"
	self.role = "Light Bomber"
	self.team = allies
	self.flightmodel = "swordfishI"
	self.modelid = "swordfish"
	self.servicegroup = "swordfish" // for sharing number of planes in obj matches
	
	self.ARMOR = 3.0
	self.EQUIPMENT_MASS = 0.0 // kg
	
	// increased tag_mult so it does more damage
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible vickers 130.0 -130.0 -60.0 20.0 "Lewis .303Cal" tag_reargun 1 ( -20.0 180.0 0.0) "skylimit/weapons/lewis.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun vickers -130.0 130.0 -90.0 90.0 mg tag_barrel::NULL 1::NULL 0.0::NULL game.false::NULL
	
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_500kg bomb_500kg_brown pylon1
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_125kg bomb_125kg_brown pylon4
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_125kg bomb_125kg_brown pylon5
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_125kg bomb_125kg_brown pylon6
	waitthread global/skylimit/plane_selection.scr::addloadout bomb_125kg bomb_125kg_brown pylon7
end game.true