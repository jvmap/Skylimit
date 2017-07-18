// B17 Heavy Bomber, 12x250kg interal

main:
	
	self.name = "Boeing B-17 Flying Fortress"
	self.author = "Bjarne BZR"
	self.role = "Heavy Bomber"
	self.team = allies
	self.flightmodel = "B17G"
	self.modelid = "b17"
	self.servicegroup = "b17" // for sharing number of planes in obj matches
	
	self.EQUIPMENT_MASS = 1000.0 // kg
	self.ARMOR = 8.0
	
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" 150.0 -150.0 -30.0 30.0 "Rear Turret .50Cal" turret_tail 2 ( -5.0 180.0 0.0)  "skylimit/weapons/twin_mg.tik" game.false sl_ib17ttl
	waitthread global/skylimit/weapons.scr::add_primary_weapon turret "browning50" -180.0 180.0 -90.0 0.0 "Dorsal Turret .50Cal" turret_dorsal 2 turret_dorsal game.true "skylimit/weapons/twin_mg.tik" sl_ib17tdrsl
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" -180.0 180.0 0.0 90.0 "Ball Turret .50Cal" turret_ventral 2 ( 0.0 -180.0 0.0) turret_ventral game.true sl_ib17tvntrl
	
	// nose and beam guns have a lower priority because they do less damage (single guns)
	// this way they'll kick in as back-up weapons when the more powerful weapons have jammed
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" 80.0 140.0 -30.0 30.0 "L Beam .50Cal" tag_beam_left 1 ( 20.0 120.0 0.0) "skylimit/weapons/cal50.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" -140.0 -80.0 -30.0 30.0 "R Beam .50Cal" tag_beam_right 1 ( 20.0 -120.0 0.0) "skylimit/weapons/cal50.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" 30.0 80.0 -30.0 30.0  "L Cheek .50Cal" tag_cheek_left 1 ( 20.0 60.0 0.0) "skylimit/weapons/cal50.tik"
	waitthread global/skylimit/weapons.scr::add_primary_weapon machinegun_flexible "browning50" -80.0 -30.0 -30.0 30.0 "R Cheek .50Cal" tag_cheek_right 1 ( 20.0 -60.0 0.0) "skylimit/weapons/cal50.tik"
	
	waitthread global/skylimit/plane_selection.scr::addinventory bomb_internal 12 
	
end game.true