// Barb wire
sl_alamein_barbwire
{
	qer_editorimage textures/skylimit/alamein/bspindle.tga
	cull none
	nopicmip
	nomipmaps
	{
		map textures/models/items/bplane.tga //textures/skylimit/alamein/bspindle.tga
		blendFunc blend
		alphaFunc GT0
		//alphaGen oneminusdistFade 10 50 //256 3072
		tcMod scale 32.0 1.0
		rgbGen identity
	}
}

textures/sl_alamein/sky
{
	qer_editorimage textures/skylimit/alamein/sky/alamein_lf.tga
	
	qer_keyword skylimit
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm sky
	skyParms textures/skylimit/alamein/sky/alamein 1024 -
}

textures/skylimit/sand_baselayer_notused
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	//q3map_globaltexture
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		//map textures/mohtest/omaha_set2.tga
		//tcMod scale 0.02 0.02
		//rgbGen const 0.90 0.79 0.56
		map textures/skylimit/alamein/terrain.tga
		//tcMod scale 0.0078125 0.0078125
		//tcMod macro 24.0 24.0
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		//rgbGen const 0.95 0.9 0.85
		rgbGen const 0.55 0.5 0.45
	}
	//{
	//	map textures/mohtest/omaha_set2.tga
	//	tcMod scale 0.1 0.1
	//	alphaGen const 0.5
	//	blendfunc blend
	//	rgbGen const 0.95 0.90 0.78
	//}
	//{
	//	map textures/mohtest/omaha_set2.tga //textures/skylimit/alamein/terrain.tga
	//	tcMod macro 24.0 24.0
	//	tcMod offset 0.17 0.31
	//	tcMod transform 0.707 -0.707 0.707 0.707 0.0 0.0
	//	alphaGen const 0.0 //0.2
	//	blendfunc blend
		//rgbGen const 0.97 0.95 0.89
	//	rgbGen const 0.95 0.9 0.85
	//}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 1.0 1.0 //1.5 1.5 //1.0 1.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		//alphaGen distFade 0 3000 //2000
		alphaGen const 0.5 //0.4
		blendfunc alphaadd //blend
		//blendfunc GL_DST_COLOR GL_SRC_ALPHA
		//rgbGen const 0.97 0.95 0.89
		//rgbGen const 0.8 0.7 0.6
		rgbGen const 0.95 0.9 0.85
	}
}

textures/skylimit/sand_baselayer
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 0.25 0.25
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen distFade 0.0 2000.0
		alphaFunc GT0
		blendfunc blend
		rgbGen const 1.0 0.92 0.8
	}
}

textures/skylimit/sand_baselayer1
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 0.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer2
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer3
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move 0.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer4
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer5
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 0.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer6
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer7
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move 0.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/sand_baselayer8
{
	qer_keyword skylimit
	surfaceparm sand
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	qer_editorimage textures/mohtest/omaha_set2.tga
	{
		map textures/skylimit/alamein/terrain.tga
		tcGen vector 0.00008 0.0 0.0 0.0 0.00008 0.0
		tcMod offset 0.0 -0.35
		rgbGen const 1.0 0.9 0.8
	}
	{
		map textures/mohtest/omaha_set2.tga
		tcMod macro 4.0 4.0
		tcMod offset 0.07 0.83
		tcMod transform 0.839 -0.545 0.545 0.839 0 0 
		alphaGen const 0.5
		blendfunc blend
		rgbGen const 1.0 0.9 0.8
	}
}

textures/skylimit/pyramid0
{	
	qer_keyword stone
	qer_keyword skylimit
	qer_editorimage textures/mohtest/argenmid1.tga
	
	surfaceparm nolightmap
	surfaceparm stone
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.90 0.79 0.56 //0.54 0.48 0.34 //1.0 0.95 0.5 // yellower
		rgbGen const 0.95 0.9 0.85
	}
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.54 0.48 0.34 // 0.6 * (0.90 0.79 0.56)
		rgbGen const 0.4 0.4 0.4
		alphaGen const 0.5
		//alphaGen distFade 0 4000
		blendfunc blend
	}
}

textures/skylimit/pyramid1
{
	qer_keyword stone
	qer_keyword skylimit
	qer_editorimage textures/mohtest/argenmid1.tga
	
	surfaceparm nolightmap
	surfaceparm stone
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.90 0.79 0.56 //1.0 0.95 0.5 // yellower
		rgbGen const 0.95 0.9 0.85
	}
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.63 0.55 0.39 // 0.7 * (0.90 0.79 0.56)
		rgbGen const 0.7 0.7 0.7
		alphaGen const 0.5
		//alphaGen distFade 0 4000
		blendfunc blend
	}
}

textures/skylimit/pyramid2
{
	qer_keyword stone
	qer_keyword skylimit
	qer_editorimage textures/mohtest/argenmid1.tga
	
	surfaceparm nolightmap
	surfaceparm stone
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.90 0.79 0.56 //1.0 0.95 0.5 // yellower
		rgbGen const 0.95 0.9 0.85
	}
	{
		map textures/mohtest/argenmid1.tga
		//rgbGen const 0.72 0.63 0.45 // 0.8 * (0.90 0.79 0.56)
		rgbGen const 1.0 1.0 1.0
		alphaGen const 0.5
		//alphaGen distFade 0 4000
		blendfunc blend
	}
}