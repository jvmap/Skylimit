// Spitfire Vc 4x 20mm

/*
jv_map's spitfire naming convention:
(this is similar but not exactly the same as the historical naming)

spitfireXXX#Z

	XXX -> main variant number (I, V, IX etc)
	#	-> revision number
	Z	-> armament number
			A = 8 x light mg
			B = 4 x light mg, 2 x 20mm (120 rounds per gun)
			C = 4 x 20mm
			D = 2 x heavy mg, 2 x 20mm (280 rounds per gun)
*/

main:
	
	self.name = "Supermarine Spitfire MkVc"
	self.role = "Fighter"
	self.team = allies
	self.flightmodel = "spitfireV"
	self.modelid = "spitfire"
	self.servicegroup = "spitfire" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.7
	self.EQUIPMENT_MASS = 800.0 // kg
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun hispano -180.0 180.0 -90.0 90.0 cannon_all tag_barrel1::tag_barrel2 2::2 0.01::( -0.01) game.false::game.false	
end game.true