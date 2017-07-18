// Spitfire IXc 2x 20mm, 4x cal303

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
	self.name = "Supermarine Spitfire MkIXc"
	self.role = "Fighter"
	self.team = allies
	self.flightmodel = "spitfireIX"
	self.modelid = "spitfire"
	self.servicegroup = "spitfire" // for sharing number of planes in obj matches
	
	self.ARMOR = 0.8
	self.EQUIPMENT_MASS = 800.0 // kg
	
	self.suppress_skinlist[1] = barrel_inboard
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun browning303 -180.0 180.0 -90.0 90.0 mg303 tag_barrel3::tag_barrel4::tag_barrel5::tag_barrel6 1::1::1::1 0.01::( -0.01)::0.02::( -0.02) game.false::game.false::game.false::game.false
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun hispano -180.0 180.0 -90.0 90.0 cannon_outboard tag_barrel1::tag_barrel2 1::1 0.01::( -0.01) game.false::game.false
end game.true