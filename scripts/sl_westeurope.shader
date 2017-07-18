
//-//-//-//-//-//-//-//-//-//-//-//->
// Terrain Textures - Custom
//-//-//-//-//-//-//-//-//-//-//-//->

textures/skylimit/westeurope/terrain1
{
	qer_editorimage textures/skylimit/westeurope/terrain1.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	{
		map textures/skylimit/westeurope/terrain1.tga
		rgbGen const 0.8 0.8 0.8
	}
	{
		map textures/skylimit/westeurope/terrain_overlay.tga
		alphaGen distFade 0 2000
		rgbGen const 0.9 0.9 0.9
		blendfunc blend
		tcMod macro 1.0 1.0
		alphaFunc GT0
	}
}

textures/skylimit/westeurope/terrain2
{
	qer_editorimage textures/skylimit/westeurope/terrain2.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	{
		map textures/skylimit/westeurope/terrain2.tga
		rgbGen const 0.8 0.8 0.8
	}
	{
		map textures/skylimit/westeurope/terrain_overlay.tga
		alphaGen distFade 0 2000
		rgbGen const 0.9 0.9 0.9
		blendfunc blend
		tcMod macro 1.0 1.0
		alphaFunc GT0
	}

}

textures/skylimit/westeurope/terrain3
{
	qer_editorimage textures/skylimit/westeurope/terrain3.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	{
		map textures/skylimit/westeurope/terrain3.tga
		rgbGen const 0.8 0.8 0.8
	}
	{
		map textures/skylimit/westeurope/terrain_overlay.tga
		alphaGen distFade 0 2000
		rgbGen const 0.9 0.9 0.9
		blendfunc blend
		tcMod macro 1.0 1.0
		alphaFunc GT0
	}

}

textures/skylimit/westeurope/terrain4
{
	qer_editorimage textures/skylimit/westeurope/terrain4.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	{
		map textures/skylimit/westeurope/terrain4.tga
		rgbGen const 0.8 0.8 0.8
	}
	{
		map textures/skylimit/westeurope/terrain_overlay.tga
		alphaGen distFade 0 2000
		rgbGen const 0.9 0.9 0.9
		blendfunc blend
		tcMod macro 1.0 1.0
		alphaFunc GT0
	}

}

textures/skylimit/westeurope/terrain5
{
	qer_editorimage textures/skylimit/westeurope/terrain5.tga
	qer_keyword skylimit
	surfaceparm grass
	tessSize 1024 // for fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	{
		map textures/skylimit/westeurope/terrain5.tga
		rgbGen const 0.8 0.8 0.8
	}
	{
		map textures/skylimit/westeurope/terrain_overlay.tga
		alphaGen distFade 0 2000
		rgbGen const 0.9 0.9 0.9
		blendfunc blend
		tcMod macro 1.0 1.0
		alphaFunc GT0
	}

}

// Bunker Textures - lightmapless

textures/skylimit/westeurope/concrete_nolight
{
	qer_keyword concrete
	qer_keyword wall
	surfaceparm stone
	surfaceparm nolightmap
	qer_editorimage textures/skylimit/westeurope/qer_concrete_nolight.tga
	{
		map textures/general_structure/conc_rough4a.tga
		//rgbGen const 0.6 0.6 0.6
		rgbGen dot 0.4 0.8
	}
}

textures/skylimit/westeurope/rubble_nolight
{
	qer_keyword gravel
	qer_keyword floor
	qer_keyword damaged
	surfaceparm gravel
	surfaceparm nolightmap
	qer_editorimage textures/skylimit/westeurope/qer_rubble_nolight.tga
	{
		map textures/mohtest/cityrbblbs.tga
		//rgbGen const 0.6 0.6 0.6
		rgbGen dot 0.4 0.8
	}
}

textures/skylimit/westeurope/door_nolight
{
	qer_keyword door
	qer_keyword metal
	surfaceparm metal
	surfaceparm nolightmap
	qer_editorimage textures/skylimit/westeurope/qer_door_nolight.tga
	{
		map textures/blasted/bunkerdoor3.tga
		//rgbGen const 0.6 0.6 0.6
		rgbGen dot 0.4 0.8
	}
} 

//-//-//-//-//-//-//-//-//-//-//-//->
// Sky Textures - Custom
//-//-//-//-//-//-//-//-//-//-//-//->

textures/skylimit/westeurope/sky
{
	qer_editorimage textures/skylimit/westeurope/sky/westeurope_ft.tga
	qer_keyword sky
	surfaceparm sky
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm nomarks
	skyParms textures/skylimit/westeurope/sky/westeurope 512 -
}