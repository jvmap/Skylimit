// this is a menu texture
sl_selectplane_bk
{
	nomipmaps 
	nopicmip
	force32bit
	
	{
		clampmap textures/skylimit/menu/selectplane_bk.tga
		blendfunc blend
		alphaFunc GT0
	}
}

textures/skylimit/planeclip
{
	qer_editorimage textures/skylimit/qer_planeclip.tga
	qer_trans 0.5
	
	qer_keyword skylimit
	qer_keyword common
	
	surfaceparm nolightmap
	surfaceparm nodraw
	surfaceparm trans
}

textures/skylightmap
{
	qer_editorimage textures/common/black.tga
	qer_trans 0.5
	
	qer_keyword skylimit
	
	polygonOffset
	{
		map $lightmap
		blendfunc filter
	}
}

skylimit_teamicon_allies
{
	deformVertexes autoSprite
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		//rgbGen vertex
		rgbGen identity
		//alphagen vertex
		alphagen oneminusdistFade 128 512
		map textures/hud/allies.tga
		//tcMod scale 0.25 0.25
	}
}

skylimit_teamicon_axis
{
	deformVertexes autoSprite
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		//alphagen vertex
		alphagen oneminusdistFade 128 512
		map textures/hud/axis.tga
		//tcMod scale 0.25 0.25
	}
}

skylimit_objicon_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity //vertex
		//alphagen vertex
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_objective.tga
	}
}

skylimit_objicon_axis
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity //vertex
		//alphagen vertex
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/axis_objective.tga
	}
}

skylimit_icon_flak_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_flak.tga
		depthWrite
	}
}

skylimit_icon_flak_axis
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/axis_flak.tga
		depthWrite
	}
}

skylimit_icon_radar_flak_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_radar_flak.tga
		depthWrite
	}
}

skylimit_icon_radar_flak_axis
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/axis_radar_flak.tga
		depthWrite
	}
}

skylimit_icon_carrier_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_carrier.tga
		depthWrite
	}
}

skylimit_icon_radar_carrier_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_radar_carrier.tga
		depthWrite
	}
}

skylimit_icon_radar_station_allies
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/allies_radar_station.tga
		depthWrite
	}
}

skylimit_icon_radar_station_axis
{
	deformVertexes autoSprite2
	
	surfaceparm nolightmap
	nopicmip
	{
		alphaFunc GT0
		blendFunc blend
		rgbGen identity
		alphagen oneminusdistFade 512 1024
		map textures/skylimit/hud/axis_radar_station.tga
		depthWrite
	}
}

// interior crosshair
sl_X1
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.89 0.42
	}
}

// interior crosshair CAREFUL AIMING AT FRIENDLY D00D!
sl_X1f
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.0 0.0
	}
}

// exterior crosshair
sl_X2
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair_exterior.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.89 0.42
	}
}

// exterior crosshair CAREFUL AIMING AT FRIENDLY D00D!
sl_X2f
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair_exterior.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.0 0.0
	}
}

// unarmed crosshair
sl_X3
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair_unarmed.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.89 0.42
	}
}

// unarmed crosshair CAREFUL AIMING AT FRIENDLY D00D!
sl_X3f
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/crosshair_unarmed.tga
		blendFunc alphaadd
		alphaFunc GT0
		rgbGen const 1.00 0.0 0.0
	}
}

// main cockpit panel
skylimit/hud/panel_base
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/panel_base.tga
		alphaFunc GT0
		blendFunc blend
	}
}

// gear cockpit panel -> down
skylimit/hud/gear_down
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/gear_down.tga
	}
}

// gear cockpit panel -> up
skylimit/hud/gear_up
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/gear_up.tga
	}
}

skylimit/hud/light_red_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_red_on.tga
	}
}

skylimit/hud/light_red_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_red_off.tga
	}
}

skylimit/hud/light_yellow_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_yellow_on.tga
	}
}

skylimit/hud/light_yellow_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_yellow_off.tga
	}
}

skylimit/hud/light_green_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_green_on.tga
	}
}

skylimit/hud/light_green_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_green_off.tga
	}
}

skylimit/hud/airspeedbase
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/airspeedbase.tga
		blendFunc blend
	}
}

skylimit/hud/airspeedhand
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/airspeedhand.tga
		blendFunc blend
		rgbGen const 0.8 0.8 0.8
	}
}

skylimit/hud/altimeterbase
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/altimeterbase.tga
		blendFunc blend
	}
}

// for 100 of ft
skylimit/hud/altimeterhand
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/altimeterhand.tga
		blendFunc blend
	}
}

// for 1000 of ft
skylimit/hud/altimetersmallhand
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/altimetersmallhand.tga
		blendFunc blend
		rgbGen const 0.8 0.8 0.8
	}
}

// for 10000 of ft
skylimit/hud/altimeterblob
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/altimeterblob.tga
		blendFunc blend
		rgbGen const 0.8 0.8 0.8
	}
}

skylimit/hud/radar_base
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_base.tga
		blendFunc blend
	}
}

skylimit/hud/radar_compass
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_compass.tga
		blendFunc blend
	}
}

// not used
skylimit/hud/radar_direction_indicators
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_direction_indicators.tga
		blendFunc blend
		rgbGen const 0.8 0.8 0.8
	}
}

// not used
skylimit/hud/radar_needle_green
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_needle_green.tga
		blendFunc blend
	}
}

// not used
skylimit/hud/radar_needle_red
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_needle_red.tga
		blendFunc blend
	}
}

// not used
skylimit/hud/radar_light_red
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_light_red.tga
		blendFunc blend
	}
}

skylimit/hud/radar_ac
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_ac.tga
		blendFunc add
	}
}

skylimit/hud/radar_blob_bandit
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_blob_bandit.tga
		blendFunc blend
	}
}

skylimit/hud/radar_blob_friendly
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/radar_blob_friendly.tga
		blendFunc blend
	}
}

skylimit/hud/tempbase
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/tempbase.tga
		alphaFunc GT0
		blendFunc blend
	}
}

skylimit/hud/rearm
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/rearm.tga
		blendFunc blend
		alphaFunc GT0
	}
}

skylimit/hud/rearm_and_heal
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/rearm_heal.tga
		blendFunc blend
		alphaFunc GT0
	}
}

// cockpit lights
skylimit/hud/light_disabled
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_disabled.tga
	}
}

skylimit/hud/light_airbrakes_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_airbrakes_off.tga
	}
}

skylimit/hud/light_airbrakes_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_airbrakes_on.tga
	}
}

skylimit/hud/light_bombdoors_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_bombdoors_off.tga
	}
}

skylimit/hud/light_bombdoors_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_bombdoors_on.tga
	}
}

skylimit/hud/light_flak_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_flak_off.tga
	}
}

skylimit/hud/light_flak_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_flak_on.tga
	}
}

skylimit/hud/light_gear_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_gear_off.tga
	}
}

skylimit/hud/light_gear_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_gear_on.tga
	}
}

skylimit/hud/light_stall_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_stall_off.tga
	}
}

skylimit/hud/light_stall_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_stall_on.tga
	}
}

skylimit/hud/light_wheelbrakes_off
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_wheelbrakes_off.tga
	}
}

skylimit/hud/light_wheelbrakes_on
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		clampmap textures/skylimit/hud/light_wheelbrakes_on.tga
	}
}

// "propellar"
sl_prop
{
	qer_editorimage textures/models/vehicles/fockwulf/prop.tga
	sort nearest
	cull none
	{
		clampmap textures/models/vehicles/fockwulf/prop.tga
		tcmod rotate 5000
		blendFunc blend
	}
}

// Fockwulf airplane
sl_fockwulf
{
	qer_editorimage textures/models/vehicles/fockwulf/fockwulf.tga
	{
		//map textures/models/vehicles/fockwulf/fockwulf.tga
		map textures/skylimit/models/fw190/desert.tga
		rgbGen lightingSpherical
	}
}

// for the fw190 gear
fockwulf_nocull
{
	qer_editorimage textures/models/vehicles/fockwulf/fockwulf.tga
	cull none
	{
		//map textures/models/vehicles/fockwulf/fockwulf.tga
		map textures/skylimit/models/fw190/desert.tga
		rgbGen lightingSpherical
	}
}

textures/skylimit/shadow
{
	qer_keyword skylimit
	qer_editorimage textures/common/caulkshadow.tga
	
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	
	polygonOffset
	{
		map $whiteimage
		rgbGen const 0.7 0.7 0.7
		blendfunc filter
	}
}

textures/skylimit/water
{
	qer_editorimage textures/misc_outside/ocean2.tga
	qer_keyword natural
	qer_keyword liquid
	qer_keyword ocean
	qer_trans .4
	surfaceParm trans
	surfaceParm water
	surfaceParm noimpact
	surfaceparm nolightmap
	//cull none
	//tessSize 128
	//deformVertexes move 0 2 2 sin -3 1 0 .1
	//deformVertexes move 0 2 2 sin 0 5 0 .05
	//deformVertexes bulge -6 6 .3
///	deformVertexes wave 1000 sin 100 80 1 .3
//	deformVertexes bulge -6.2831853 16 .8
	//bulge = numberoftimesrepeatedpertexture amplitude frequency
	{
		map $whiteimage
		rgbGen const 0.90 0.79 0.56
	}
	{
		map $whiteimage
		rgbGen const 0.7 0.8 1.0
		alphaGen distfade 0 6000
		blendfunc blend
	}
	{
		map textures/misc_outside/ocean2.tga
		blendFunc blend
		depthWrite
		rgbGen identity
		alphaGen dot .1 .6
		tcMod scroll .01 0
		//tcMod scale 9 7
		tcMod turb 0 .08 0 .08
	}
	{
		map textures/misc_outside/ocean2.tga
		blendFunc add
		depthWrite
		rgbGen const (.95 .94 1)
		alphaGen dot .1 .6
		tcMod scroll -.01 .002
		tcMod turb 0 .005 0 .008
		//tcMod scale 10 9
	}
	{
		map textures/misc_outside/froth.tga
		blendFunc blend
		alphaGen dot .1 .6
		tcMod scroll .01 .01
		tcMod turb 0 .01 0 .05
		//tcMod scale 9 7
	}
	//{
	//	map $lightmap
	//	rgbGen Identity
	//	blendFunc GL_DST_COLOR GL_ZERO
	//}
}

// not used
textures/skylimit/water_old
{
	surfaceparm water
	surfaceparm nolightmap
	
	qer_keyword skylimit
	qer_editorimage textures/skylimit/bluewater.tga
	
	{
		map textures/skylimit/bluewater.tga
		tcMod turb 0.0 1.0 0.0 0.01
		tcMod scale 2.0 2.0
	}
	{
		map textures/skylimit/watertwinkle.tga
		tcMod scale 4.0 4.0
		tcMod turb 0.0 1.0 0.0 0.1
		//tcMod parallax 1.0 1.0
		//alphaGen OneMinusdot 0.0 1.0
		alphaFunc GT128
		depthWrite
		blendfunc blend
	}
}

// not used
textures/skylimit/sand_detaillayer
{
	tessSize 512
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm sand
	
	qer_keyword skylimit
	
	//sort nearest
	//entityMergable
	
	//polygonoffset
	
	//qer_editorimage textures/mohtest/omaha_set2.tga
	//{
	///	map textures/mohtest/omaha_set2.tga
	//	tcMod transform 0.839 -0.545 0.545 0.839 0 0 
	////	alphaGen distFade 128 10000
	//	blendfunc blend
	//}
	
	{
		map $whiteimage
		blendfunc filter
	}
}

// not used
textures/skylimit/terrain
{
	qer_editorimage textures/misc_outside/steve_grass512_set2.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	{
		map textures/misc_outside/steve_grass512_set2.tga
		tcMod rotate fromEntity
	nextbundle
		map $lightmap
	}
}

// P-38 by psykotic_chiken
p38_body
{
	{
		map textures/skylimit/models/p38/body.tga
		rgbGen lightingSpherical
	}
}

p38_cockpit
{
	{
		map textures/skylimit/models/p38/cockpit.tga
		rgbGen lightingSpherical
	}
}

p38_gear
{
	{
		map textures/skylimit/models/p38/gear.tga
		rgbGen lightingSpherical
	}
}

p38_wings
{
	{
		map textures/skylimit/models/p38/wings.tga
		rgbGen lightingSpherical
	}
}

// Stuka window desert camo
ju87_window_desert
{
	qer_editorimage textures/skylimit/models/ju87/stukawindow_desert.tga
	
	// window shine
	{
		map textures/common/reflection1.tga
		tcgen sunreflection
	}
	{
		map textures/skylimit/models/ju87/stukawindow_desert.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		blendfunc blend
	}
}

ju87_europe
{
	qer_editorimage textures/skylimit/models/ju87/ju87_europe.tga
	{
		map textures/skylimit/models/ju87/ju87_europe.tga
		rgbGen lightingSpherical
	}
}

// Stuka window desert camo
ju87_window_europe
{
	qer_editorimage textures/skylimit/models/ju87/stukawindow_europe.tga
	
	// window shine
	{
		map textures/common/reflection1.tga
		tcgen sunreflection
	}
	{
		map textures/skylimit/models/ju87/stukawindow_europe.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		blendfunc blend
	}
}

sl_wake
{
	spritegen oriented
	//cull none
	//polygonOffset
	{
		clampmap textures/effects/oceanspray.tga
		blendFunc blend
		alphaGen vertex	
		rgbGen vertex
	}
}

skyhiggins_m5bag
{
	qer_editorimage textures/models/gear/us_gear/m5bag.tga
	{
		map textures/models/gear/us_gear/m5bag.tga
		alphaGen distfade 0 200
		alphaFunc GE128
	}
}

skyhiggins_usequip
{
	qer_editorimage textures/models/gear/us_gear/usequip.tga
	{
		map textures/models/gear/us_gear/usequip.tga
		alphaGen distfade 0 200
		alphaFunc GE128
	}
}

skyhiggins_slick
{
	qer_editorimage textures/models/human/faces/slick.tga
	{
		map textures/models/human/faces/slick.tga
		alphaGen distfade 0 400
		alphaFunc GE128	
	}
}

skyhiggins_us-helmet_private
{
	qer_editorimage textures/models/human/usmaps/ranger/private.tga
	{
		map textures/models/human/usmaps/ranger/private.tga
		alphaGen distfade 0 400
		alphaFunc GE128	
	}
}

skyhiggins_hbt_jacket
{
	qer_editorimage textures/models/human/usmaps/ranger/hbt_jacket.tga
	{
		map textures/models/human/usmaps/ranger/hbt_jacket.tga
		alphaGen distfade 0 200
		alphaFunc GE128	
	}
}

skyhiggins
{
	qer_editorimage textures/models/vehicles/higgins/higgins.tga
	
	{
		map textures/models/vehicles/higgins/higgins.tga
		alphaGen distfade 0 1600 //800
		alphaFunc GT0
	}
}

// Stuka_g2 gun desert camoflauge
stukag2_desert
{
	qer_editorimage textures/skylimit/models/weapons/37mm/desert.tga
	{
		map textures/skylimit/models/weapons/37mm/desert.tga
		rgbGen lightingSpherical
	}
}

skylimit_50kg_grey
{
	qer_editorimage textures/skylimit/models/weapons/50kg/grey.tga
	{
		map textures/skylimit/models/weapons/50kg/grey.tga
		//rgbGen lightingSpherical
	}
}

// this is the crosshair from modern warfare atm
skylimit_bomb_crosshair
{
	surfaceparm nolightmap
	nomipmaps
	nopicmip
	{
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		clampmap textures/hud/crosshair.tga
	}
}

// has a faint metalic gloss
spitfire
{
	qer_editorimage textures/skylimit/models/spitfire/body.tga
	{
		map textures/skylimit/models/spitfire/body.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35 //0.5 0.5 0.5
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
}

// has specular highlights
spitfire_specular
{
	qer_editorimage textures/skylimit/models/spitfire/body.tga
	{
		map textures/skylimit/models/spitfire/body.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35 //0.5 0.5 0.5
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
	{
		map $whiteimage
		rgbGen const 0.90 0.8 0.70
		alphaGen dot -100.0 1.0
		blendfunc alphaadd
	}
}

// has a faint metalic gloss
spitfire_desert
{
	qer_editorimage textures/skylimit/models/spitfire/body_desert.tga
	{
		map textures/skylimit/models/spitfire/body_desert.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35 //0.5 0.5 0.5
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
}

// has specular highlights
spitfire_desert_specular
{
	qer_editorimage textures/skylimit/models/spitfire/body_desert.tga
	{
		map textures/skylimit/models/spitfire/body_desert.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35 //0.5 0.5 0.5
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
	{
		map $whiteimage
		rgbGen const 0.90 0.8 0.70
		alphaGen dot -100.0 1.0
		blendfunc alphaadd
	}
}

// has a faint metalic gloss
// fleet air arm version (seafire)
spitfire_faa
{
	qer_editorimage textures/skylimit/models/spitfire/body_faa.tga
	{
		map textures/skylimit/models/spitfire/body_faa.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
}

// has specular highlights
spitfire_faa_specular
{
	qer_editorimage textures/skylimit/models/spitfire/body_faa.tga
	{
		map textures/skylimit/models/spitfire/body_faa.tga
		rgbGen lightingSpherical
	}
	{
		map $whiteimage
		rgbGen const 0.45 0.4 0.35
		alphaGen dot -20.0 1.0
		blendfunc alphaadd
	}
	{
		map $whiteimage
		rgbGen const 0.90 0.8 0.70
		alphaGen dot -100.0 1.0
		blendfunc alphaadd
	}
}

// not used
p47_prop_flash
{
	qer_editorimage textures/models/vehicles/p47/p47.tga
	{
		map $whiteimage //textures/models/vehicles/p47/p47.tga
		rgbGen const 0.0 0.0 0.0
		//<function> <base> <amplitude> <phase> <frequency>
		alphaGen wave triangle 0.5 1.0 0.0 2.0
		//alphaGen const 0.8
		//rgbGen wave triangle 0.5 0.5 0.0 1.0
		blendfunc blend
	}
}

// Hedgehog
sl_hedgehog_fade
{
	qer_editorimage textures/models/items/hedgehog.tga
	cull none
	{
		map textures/models/items/hedgehog.tga
		rgbGen identity
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}

fw200
{
	qer_editorimage textures/skylimit/models/fw200/fw200.tga
	{
		map textures/skylimit/models/fw200/fw200.tga
		rgbGen lightingSpherical
	}
}

bf109_desert
{
	qer_editorimage textures/skylimit/models/bf109/body_desert.tga
	{
		map textures/skylimit/models/bf109/body_desert.tga
		rgbGen lightingSpherical
	}
}

bf109_desert_wheel
{
	qer_editorimage textures/skylimit/models/bf109/wheel_desert.tga
	{
		map textures/skylimit/models/bf109/wheel_desert.tga
		rgbGen lightingSpherical
	}
}

bf109_desert_prop
{
	qer_editorimage textures/skylimit/models/bf109/prop_white.tga
	{
		map textures/skylimit/models/bf109/prop_white.tga
		rgbGen lightingSpherical
	}
}

bf109_desert_prop_nolight
{
	qer_editorimage textures/skylimit/models/bf109/prop_white.tga
	{
		map textures/skylimit/models/bf109/prop_white.tga
		rgbGen identity
	}
}

bf109_desert_filter
{
	qer_editorimage textures/skylimit/models/bf109/filter_desert.tga
	{
		map textures/skylimit/models/bf109/filter_desert.tga
		rgbGen lightingSpherical
	}
}

bf109_trop
{
	qer_editorimage textures/skylimit/models/bf109/body_trop.tga
	{
		map textures/skylimit/models/bf109/body_trop.tga
		rgbGen lightingSpherical
	}
}

bf109_trop_wheel
{
	qer_editorimage textures/skylimit/models/bf109/wheel_trop.tga
	{
		map textures/skylimit/models/bf109/wheel_trop.tga
		rgbGen lightingSpherical
	}
}

bf109_trop_prop
{
	qer_editorimage textures/skylimit/models/bf109/prop_white.tga
	{
		map textures/skylimit/models/bf109/prop_white.tga
		rgbGen const 0.25 0.21 0.16 //0.49 0.42 0.32
	}
	{
		map $whiteimage
		rgbGen lightingSpherical
		blendfunc filter
	}
}

bf109_europe
{
	qer_editorimage textures/skylimit/models/bf109/body_europe.tga
	{
		map textures/skylimit/models/bf109/body_europe.tga
		rgbGen lightingSpherical
	}
}

hurricane_desert
{
	qer_editorimage textures/skylimit/models/hurricane/body_desert.tga
	{
		map textures/skylimit/models/hurricane/body_desert.tga
		rgbGen lightingSpherical
	}
}

hurricane_desert_window
{
	qer_editorimage textures/skylimit/models/hurricane/body_desert.tga
	{
		map textures/skylimit/models/hurricane/body_desert.tga
		rgbGen lightingSpherical
	}
	{
		map textures/common/reflection1.tga
		rgbGen lightingSpherical
		tcgen environmentmodel
		alphaGen const 0.5
		blendfunc blend
	}
}

b17_body
{
	qer_editorimage textures/skylimit/models/b17/body.tga
	{
		map textures/skylimit/models/b17/body.tga
		rgbGen lightingSpherical
	}
}

b17_gear
{
	qer_editorimage textures/skylimit/models/b17/gear.tga
	{
		map textures/skylimit/models/b17/gear.tga
		rgbGen lightingSpherical
	}
}

b17_bombbay
{
	qer_editorimage textures/skylimit/models/b17/bombbay.tga
	{
		map textures/skylimit/models/b17/bombbay.tga
		rgbGen lightingSpherical
	}
}

swordfish_grey_body
{
	qer_editorimage textures/skylimit/models/swordfish/body_grey.tga
	{
		map textures/skylimit/models/swordfish/body_grey.tga
		rgbGen lightingSpherical
	}
}

swordfish_desert_body
{
	qer_editorimage textures/skylimit/models/swordfish/body_desert.tga
	{
		map textures/skylimit/models/swordfish/body_desert.tga
		rgbGen lightingSpherical
	}
}

// black :)
swordfish_cables
{
	{
		map $whiteimage
		rgbGen const 0.0 0.0 0.0
	}
}

// temp!
swordfish_grey_gear
{
	{
		map textures/skylimit/models/swordfish/gear_grey.tga
		rgbGen lightingSpherical
	}
}

swordfish_window
{
	cull none
	{
		map textures/skylimit/models/swordfish/window.tga
		rgbGen lightingSpherical
		blendfunc blend
		alphaFunc GT0
	}
}

skylimit_skid
{
	//spritegen oriented
	//polygonOffset
	//deformVertexes projectionShadow
	{
		map textures/skylimit/skid.tga
		blendfunc blend
		alphaGen vertex
		rgbGen vertex
	}
}

// panzer_iv
skylimit_panzer_iv_undercarriage_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/undercarriage.tga
	{
		map textures/models/vehicles/panzer_iv/undercarriage.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 4000.0 //1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_backwheelaxel_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/backwheelaxel.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv/backwheelaxel.tga
		rgbGen lightingSpherical
		//tcmod scroll 0.3 0
		
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_backwheel_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/backwheel.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv/backwheel.tga
		rgbGen lightingSpherical
		alphafunc ge128
		//tcmod rotate 5 0 25
		depthwrite
	}
}
skylimit_panzer_iv_backwheelband_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/backwheelband.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv/backwheelband.tga
		rgbGen lightingSpherical
		alphafunc ge128
		//tcmod scroll 0.3 0
	}
}
skylimit_panzer_iv_smallwheel_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/smallwheel.tga
	{
		map textures/models/vehicles/panzer_iv/smallwheel.tga
		rgbGen lightingSpherical
		//tcmod rotate 5 0 -45
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_smallwheelband_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/smallwheelband.tga
	{
		map textures/models/vehicles/panzer_iv/smallwheelband.tga
		rgbGen lightingSpherical
		//tcmod scroll -1.0 0
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_verysmallwheel_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/verysmallwheel.tga
	{
		map textures/models/vehicles/panzer_iv/verysmallwheel.tga
		rgbGen lightingSpherical
		//tcmod rotate 5 0 -75
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_tread_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/tread.tga
	{
		map textures/models/vehicles/panzer_iv/tread.tga
		rgbGen lightingSpherical
		//tcmod scroll -0.2 0
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_frontwheelband_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/frontwheelband.tga
	{
		map textures/models/vehicles/panzer_iv/frontwheelband.tga
		rgbGen lightingSpherical
		//tcmod scroll -0.2 0
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_frontwheel_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/frontwheel.tga
	{
		map textures/models/vehicles/panzer_iv/frontwheel.tga
		rgbGen lightingSpherical
		//tcmod rotate 5 0 -20
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_turret_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/turret.tga
	{
		map textures/models/vehicles/panzer_iv/turret.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 4000.0 //1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_boxes_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/boxes.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv/boxes.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}

// panzer_iv_destroyed
skylimit_panzer_iv_undercarriage_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/undercarriage_d.tga
	{
		map textures/models/vehicles/panzer_iv_d/undercarriage_d.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_backwheelaxel_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/backwheelaxel.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv/backwheelaxel.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_backwheel_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/backwheel_d.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv_d/backwheel_d.tga
		rgbGen lightingSpherical
		alphafunc ge128
		depthwrite
	}
}
skylimit_panzer_iv_backwheelband_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/backwheelband_d.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv_d/backwheelband_d.tga
		rgbGen lightingSpherical
		alphafunc ge128
	}
}
skylimit_panzer_iv_smallwheel_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/smallwheel_d.tga
	{
		map textures/models/vehicles/panzer_iv_d/smallwheel_d.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_smallwheelband_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/smallwheelband.tga
	{
		map textures/models/vehicles/panzer_iv/smallwheelband.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_verysmallwheel_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/verysmallwheel_d.tga
	{
		map textures/models/vehicles/panzer_iv_d/verysmallwheel_d.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_tread_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/tread.tga
	{
		map textures/models/vehicles/panzer_iv_d/tread.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_frontwheelband_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv/frontwheelband.tga
	{
		map textures/models/vehicles/panzer_iv/frontwheelband.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_frontwheel_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/frontwheel_d.tga
	{
		map textures/models/vehicles/panzer_iv_d/frontwheel_d.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_turret_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/turret_d.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv_d/turret_d.tga
		rgbGen lightingSpherical
		alphaGen distfade 0.0 1200.0
		alphaFunc GT0
	}
}
skylimit_panzer_iv_boxes_d_desert
{
	qer_editorimage	textures/models/vehicles/panzer_iv_d/boxes_d.tga
	cull none
	{
		map textures/models/vehicles/panzer_iv_d/boxes_d.tga
		rgbGen lightingSpherical
		alphafunc ge128
	}
}

skylimit_shermantank_desert
{
	qer_editorimage textures/models/vehicles/shermantank/shermantank.tga
	{
		map textures/models/vehicles/shermantank/shermantank.tga
		rgbGen const 1.0 0.85 0.75
		alphaGen distfade 0.0 4000.0
		alphaFunc GT0
	}
}

skylimit_shermantank_desert_detail
{
	qer_editorimage textures/models/vehicles/shermantank/shermantank.tga
	{
		map textures/models/vehicles/shermantank/shermantank.tga
		rgbGen const 1.0 0.85 0.75
		alphaGen distfade 0.0 500.0
		alphaFunc GT0
	}
}

skylimit_shermantank_desert_tinydetail
{
	qer_editorimage textures/models/vehicles/shermantank/shermantank.tga
	{
		map textures/models/vehicles/shermantank/shermantank.tga
		rgbGen const 1.0 0.85 0.75
		alphaGen distfade 0.0 150.0
		alphaFunc GT0
	}
}

skylimit_shermanthreads_desert
{
	qer_editorimage textures/models/vehicles/shermantank/shermantredz.tga
	cull none
	{
		map textures/models/vehicles/shermantank/shermantredz.tga
		rgbGen const 1.0 0.85 0.75
		alphaGen distfade 0.0 500.0
		alphaFunc GT0
	}
}

skylimit_20mmflak
{
	qer_editorimage	textures/models/statweapons/20mmflak.tga
	{
		map textures/models/statweapons/20mmflak.tga
		//rgbGen lightingSpherical
		alphaGen distfade 0.0 4000.0
		alphaFunc GT0
		blendfunc blend
	}
}

skylimit_20mmflak_d
{
	qer_editorimage	textures/models/statweapons/20mmflak_d.tga
	{
		map textures/models/statweapons/20mmflak_d.tga
		//rgbGen lightingSpherical
		alphaGen distfade 0.0 4000.0
		alphaFunc GT0
		blendfunc blend
	}
}

sl_white
{
	{
		map $whiteimage
		rgbGen const 0.5 0.5 0.5
	}
	{
		map $whiteimage
		rgbGen lightingSpherical
		blendfunc filter
	}
}

sl_trans
{
	{
		map $whiteimage
		rgbGen lightingSpherical
		alphaGen const 0.2
		blendFunc blend
	}
}

sl_mg17
{
	{
		map textures/skylimit/models/weapons/mg17/mg17.tga
		rgbGen lightingSpherical
	}
}

sl_mg17sight
{
	nopicmip
	cull none
	{
		map textures/skylimit/models/weapons/mg17/mg17sight.tga
		alphaFunc GT0
		blendfunc blend
	}
}

sl_lewis
{
	{
		map textures/skylimit/models/weapons/lewis/lewis.tga
		rgbGen lightingSpherical
	}
}

sl_cal50
{
	{
		map textures/skylimit/models/weapons/cal50/cal50.tga
		rgbGen lightingSpherical
	}
}

sl_chute_cables
{
	cull none
	{
		map textures/skylimit/models/chute/cables.tga
		alphaFunc GT0
		blendfunc blend
	}
}

sl_chute_grey
{
	cull none
	{
		map textures/skylimit/models/chute/grey.tga
		rgbGen lightingSpherical
	}
}

sl_chute_health
{
	cull none
	{
		map textures/skylimit/models/chute/health.tga
		rgbGen lightingSpherical
	}
}

// some personel stuff
sl_pilot_top
{
	qer_editorimage textures/models/human/usmaps/pilot/pilot_top.tga
	{
		map textures/models/human/usmaps/pilot/pilot_top.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 0.0 400.0
	}
}

sl_pilot_pants
{
	qer_editorimage textures/models/human/usmaps/pilot/pilot_pants.tga
	{
		map textures/models/human/usmaps/pilot/pilot_pants.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 0.0 100.0
	}
}

sl_cull_pilot_pants
{
	qer_editorimage textures/models/human/usmaps/pilot/pilot_pants.tga
	cull none
	{
		map textures/models/human/usmaps/pilot/pilot_pants.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 0.0 100.0
	}
}

sl_head1
{
	qer_editorimage textures/models/human/faces/us_j.tga
	{
		map textures/models/human/faces/us_j.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		
		// greater range
		alphaGen distFade 0.0 200.0
	}
}

sl_hands
{
	qer_editorimage textures/models/human/handsnew.tga
	{
		map textures/models/human/handsnew.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		
		// smaller range
		alphaGen distFade 0.0 50.0
	}
}

sl_explosion
{
	spriteGen parallel
	cull none
	{
		animmap 10 textures/sprites/expl/airexp_001.tga textures/sprites/expl/airexp_002.tga textures/sprites/expl/airexp_003.tga textures/sprites/expl/airexp_004.tga textures/sprites/expl/airexp_005.tga textures/sprites/expl/airexp_006.tga textures/sprites/expl/airexp_007.tga textures/sprites/expl/airexp_008.tga textures/sprites/expl/airexp_009.tga textures/sprites/expl/airexp_010.tga
		blendFunc alphaadd
		alphaGen vertex
		rgbGen vertex
	}
} 

// machinegun tracer
sl_tracer_front
{
	cull none
	//deformvertexes autosprite
	{
		map models/fx/muzflash/flashnode1.tga
		blendFunc GL_SRC_ALPHA GL_ONE
	}
}

sl_tracer_side
{
	cull none
	nomipmaps
	{
		map textures/skylimit/alphagradient.tga
		rgbGen const 1.0 1.0 0.8
		blendfunc GL_SRC_ALPHA GL_ONE
	}
}

// a fat crater :)
sl_crater
{
	polygonOffset
	{
		map textures/skylimit/fx/crater.tga
		blendfunc blend
	}
}

// formidable carrier
// dazzle painted :D
skylimit_formidable_base
{
	qer_editorimage textures/skylimit/models/formidable/base.tga
	{
		map textures/skylimit/models/formidable/base.tga
		rgbGen lightingSpherical
	}
}

skylimit_formidable_outriggers
{
	cull none
	qer_editorimage textures/skylimit/models/formidable/outrigger.tga
	{
		map textures/skylimit/models/formidable/outrigger.tga
		rgbGen identity
		alphaFunc GT0
		blendfunc blend
		//depthWrite
	}
}

// AA gun
skylimit_pompom
{
	qer_editorimage textures/skylimit/models/weapons/pompom/pompom.tga
	{
		map textures/skylimit/models/weapons/pompom/pompom.tga
		rgbGen lightingSpherical
	}
}

// naval twin turret
skylimit_turret45
{
	qer_editorimage textures/skylimit/models/weapons/turret45/turret45.tga
	{
		map textures/skylimit/models/weapons/turret45/turret45.tga
		rgbGen lightingSpherical
	}
}

// runway numbers
textures/sl_runway_08
{
	qer_editorimage textures/skylimit/runway/08.tga
	polygonOffset
	surfaceparm nolightmap
	qer_keyword skylimit
	{
		map textures/skylimit/runway/08.tga
		alphaGen const 0.5
		alphaFunc GT0
		blendfunc blend
	}
}

textures/sl_runway_17
{
	qer_editorimage textures/skylimit/runway/17.tga
	polygonOffset
	surfaceparm nolightmap
	qer_keyword skylimit
	{
		map textures/skylimit/runway/17.tga
		alphaGen const 0.5
		alphaFunc GT0
		blendfunc blend
	}
}

textures/sl_runway_26
{
	qer_editorimage textures/skylimit/runway/26.tga
	polygonOffset
	surfaceparm nolightmap
	qer_keyword skylimit
	{
		map textures/skylimit/runway/26.tga
		alphaGen const 0.5
		alphaFunc GT0
		blendfunc blend
	}
}

textures/sl_runway_35
{
	qer_editorimage textures/skylimit/runway/35.tga
	polygonOffset
	surfaceparm nolightmap
	qer_keyword skylimit
	{
		map textures/skylimit/runway/35.tga
		alphaGen const 0.5
		alphaFunc GT0
		blendfunc blend
	}
}

// 'bofors gun'
// actually the u-boot gun
// with a nice green skin
// so it doesn't look as navalish :P
skylimit_turretflak
{
	qer_editorimage textures/skylimit/models/weapons/turretflak/green.tga
	{
		map textures/skylimit/models/weapons/turretflak/green.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 1000.0 1500.0
		blendfunc blend
		depthWrite
	}
}

skylimit_turretflak_desert
{
	qer_editorimage textures/skylimit/models/weapons/turretflak/desert.tga
	{
		map textures/skylimit/models/weapons/turretflak/desert.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 1000.0 1500.0
		blendfunc blend
		depthWrite
	}
}

// flak88
skylimit_flak88
{
	qer_editorimage	textures/models/statweapons/flak88.tga
	{
		map textures/models/statweapons/flak88.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 1000.0 1500.0
		blendfunc blend
		depthWrite
	}
}

skylimit_flak88_desert
{
	qer_editorimage	textures/skylimit/models/weapons/flak88/desert.tga
	{
		map textures/skylimit/models/weapons/flak88/desert.tga
		rgbGen lightingSpherical
		alphaFunc GT0
		alphaGen distFade 1000.0 1500.0
		blendfunc blend
		depthWrite
	}
}