textures/sky_sicily/cliffs
{
	qer_keyword skylimit
	
	qer_editorimage textures/algiers/cliffset_1.tga
	
	surfaceparm stone
	{
		map textures/algiers/cliffset_1.tga
		tcMod macro 1.0 1.0
		rgbGen const 0.7 0.7 0.7
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/sky_sicily/fadecliffs
{
	qer_editorimage textures/skylimit/sicily/fadecliffs.tga
	qer_keyword skylimit
	
	surfaceparm stone
	
	{
		map textures/skylimit/sicily/terrain.jpg
		rgbGen const 0.7 0.4 0.3
		tcGen vector 0.000375 0.0 0.0 0.0 0.00075 0.0
	}
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		blendfunc blend
		alphaGen distFade 0 2000
		rgbGen const 0.8 0.7 0.4
		tcGen vector 0.001 0.0 0.0 0.0 0.001 0.0
	}
	{
		map textures/skylimit/sicily/fadecliffs.tga
		rgbGen const 0.7 0.7 0.7
		blendfunc blend
		alphaFunc GT0
		depthWrite
	nextbundle
		map $lightmap
	}
}

textures/sky_sicily/fadecliffs_notused
{
	qer_editorimage textures/skylimit/sicily/fadecliffs.tga
	qer_keyword skylimit
	
	surfaceparm stone
	//surfaceparm nolightmap
	
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		//tcMod scale 0.125 0.125
		rgbGen const 0.74 0.62 0.47  //0.82 0.77 0.67
		
		tcGen vector 0.00025 0.0 0.0 0.0 0.00025 0.0
	}
	
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		//tcMod scale 0.25 0.25
		blendfunc blend
		//alphaGen distFade 0 4000
		alphaGen const 0.5
		//rgbGen const 0.8 0.7 0.0
		rgbGen const 0.72 0.40 0.10 //0.72 0.56 0.0
		
		tcGen vector 0.0005 0.0 0.0 0.0 0.0005 0.0
	}
	
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		blendfunc blend
		alphaGen distFade 0 2000
		rgbGen const 0.8 0.6 0.4 //0.9 0.8 0.7
		tcGen vector 0.001 0.0 0.0 0.0 0.001 0.0
	}
	
	{
		map textures/skylimit/sicily/fadecliffs.tga
		blendfunc blend
		alphaFunc GT0
		depthWrite
		//rgbGen const 0.85 0.58 0.40 //0.85 0.58 0.38
	nextbundle
		map $lightmap
	}
	
	//{
	//	map $whiteimage //$lightmap
	//	blendfunc GL_DST_COLOR GL_ZERO
	//	depthFunc equal
	//}
}

textures/sky_sicily/shoreblue
{
	qer_keyword skylimit
	qer_editorimage textures/skylimit/sicily/simplefade.tga
	
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	sort seeThrough
	{
		map textures/skylimit/sicily/simplefade.tga
		rgbGen const 0.1 0.20 0.20
		//blendfunc GL_SRC_ALPHA GL_ONE
		blendfunc alphaadd
	}
}

textures/sky_sicily/shoreblue_fill
{
	qer_keyword skylimit
	qer_editorimage textures/common/qer_volumetric_fade.tga
	
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	sort seeThrough
	{
		map $whiteimage
		rgbGen const 0.08 0.16 0.16 //0.1 0.20 0.20
		blendfunc add
	}
}


textures/sky_sicily/wash
{
	qer_editorimage textures/misc_outside/wash2.tga
	qer_trans 0.5
	qer_keyword skylimit
	
	surfaceparm nolightmap
	surfaceparm trans
	polygonOffset
	
	sort nearest
	
	// washes
	{
		map textures/misc_outside/wash2.tga
		blendfunc add
		tcMod scale 4.0 4.0
		tcMod scroll -0.05 -0.1
		rgbGen wave sin 0.5 0.5 0.95 0.1
	}
	{
		map textures/misc_outside/wash1.tga
		blendfunc add
		tcMod scale 4.0 4.0
		tcMod offset 0.0 0.9
		tcMod scroll 0.05 0.1
		rgbGen wave sin 0.25 0.25 0.5 0.1
	}
}

textures/sky_sicily/wash_old
{
	qer_editorimage textures/misc_outside/wash2.tga
	qer_trans 0.5
	qer_keyword skylimit
	
	surfaceparm nolightmap
	surfaceparm trans
	polygonOffset
	
	// washes
	{
		map textures/misc_outside/wash2.tga
		blendfunc add
		tcMod scroll -0.05 -0.1
		rgbGen wave sin 0.5 0.5 0.95 0.1
	}
	{
		map textures/misc_outside/wash1.tga
		blendfunc add
		tcMod offset 0.0 0.9
		tcMod scroll 0.05 0.1
		rgbGen wave sin 0.25 0.25 0.5 0.1
	}
}

textures/sky_sicily/beach
{
	qer_keyword skylimit
	qer_editorimage textures/skylimit/sicily/beach.tga
	
	surfaceparm nolightmap
	surfaceparm sand
	//sort nearest
	{
		map textures/skylimit/sicily/beach.tga
		rgbGen const 0.7 0.5 0.4 //0.9 0.8 0.7
		blendfunc blend
	}
}

textures/sky_sicily/shadow
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

textures/sky_sicily/sky
{
	qer_editorimage textures/skylimit/sicily/sky/sicily_lf.tga
	
	qer_keyword skylimit
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm sky
	skyParms textures/skylimit/sicily/sky/sicily 512 -
}

textures/sky_sicily/earth
{
	qer_editorimage textures/mohtest/nu_earth_set4brd1.tga
	qer_keyword skylimit
	surfaceparm dirt

	surfaceparm nolightmap
	{
		map textures/skylimit/sicily/terrain.jpg //textures/mohtest/nu_earth_set4brd1.tga
		rgbGen const 0.7 0.4 0.3
		
		tcGen vector 0.000375 0.0 0.0 0.0 0.00075 0.0
	}
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		blendfunc blend
		alphaGen distFade 0 2000
		rgbGen const 0.8 0.7 0.4
		
		tcGen vector 0.001 0.0 0.0 0.0 0.001 0.0
	}
}

// not used
textures/sky_sicily/earth_old
{
	qer_editorimage textures/mohtest/nu_earth_set4brd1.tga
	qer_keyword skylimit
	surfaceparm dirt
	
	//q3map_globaltexture
	
	surfaceparm nolightmap
	
	//sort nearest
	
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		//tcMod scale 0.125 0.125
		rgbGen const 0.74 0.62 0.47  //0.82 0.77 0.67
		
		tcGen vector 0.00025 0.0 0.0 0.0 0.00025 0.0
	}
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		//tcMod scale 0.25 0.25
		blendfunc blend
		//alphaGen distFade 0 4000
		alphaGen const 0.5
		//rgbGen const 0.8 0.7 0.0
		rgbGen const 0.72 0.40 0.10 //0.72 0.56 0.0
		
		tcGen vector 0.0005 0.0 0.0 0.0 0.0005 0.0
	}
	{
		map textures/mohtest/nu_earth_set4brd1.tga
		//tcMod scale 1.0 1.0
		blendfunc blend
		alphaGen distFade 0 2000
		rgbGen const 0.8 0.6 0.4 //0.9 0.8 0.7
		
		tcGen vector 0.001 0.0 0.0 0.0 0.001 0.0
	}
}

textures/sky_sicily/water_notused
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	tessSize 2048
	q3map_globaltexture
	//{
	//	map $whiteimage
	//	rgbGen const 0.0 0.0 0.0
	//}
	
	{
		map textures/skylimit/sicily/sky/sicily_up.tga
		tcGen sunreflection
	}
	
	//{
	//	map $whiteimage
	//	rgbGen const 1.0 1.0 0.0 //0.99 0.78 0.56 //0.52 0.37 0.34 //0.24 0.20 0.22 //0.90 0.79 0.56
	//	alphaGen OneMinusDot 0.0 1.0
	//	blendfunc blend
	//}
	//{
	//	map textures/skylimit/sicily/sky/sicily_lf.tga
	//	tcGen environment
	//}
	
//	{
//		map textures/skylimit/sicily/sky/sicily_lf.tga
//		tcGen environment
//		alphaGen OneMinusDot 0.0 0.5 //0.0 1.0
//		blendfunc blend
//	}

	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.01 0.01
		blendfunc blend
		//tcMod turb 0 .2 0 .2
		tcGen vector 0.01 0 0   0 0.01 0 
	}
	
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		tcMod scroll .001 0.002
		tcMod turb 0 .1 0 .02 //0 .02 0 .02 //0 .08 0 .08
		alphaGen const 0.5 //0.7 //0.8 //0.5
		blendfunc blend
		depthWrite
		tcGen vector 0.01 0 0   0 0.01 0   
	}
}

textures/sky_sicily/water_underlay
{
	qer_editorimage textures/common/black.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm nolightmap
	{
		map $whiteimage
		rgbGen const 0.0 0.0 0.0
	}
}

textures/sky_sicily/water
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap

	sort decal

	tessSize 2048
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 1.0 0.7 0.5
		alphaGen const 0.5
		blendfunc blend
	}
	
	{
		map textures/misc_outside/ocean1.tga
		rgbGen const identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0 
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		alphaGen const 0.5
		tcMod scale 0.1 0.1
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_1
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 0.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_2
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_3
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move 0.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_4
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_5
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 0.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_6
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move -1.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_7
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move 0.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/water_8
{
	qer_editorimage textures/misc_outside/ocean1.tga
	qer_keyword skylimit
	qer_trans .4
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm water
	
	surfaceparm nolightmap
	
	deformVertexes move 1.0 -1.0 0.0 square 16256.0 0.0 0.0 0.0
	
	tessSize 4096
	q3map_globaltexture
	{
		map $whiteimage 
		rgbGen const 0.5 0.35 0.25
	}
	{
		map textures/misc_outside/ocean1.tga
		rgbGen identity
		tcMod scale 0.005 0.005
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
	{
		map textures/misc_outside/ocean2.tga
		rgbGen identity
		tcMod scale 0.1 0.1
		alphaGen const 0.5
		blendfunc blend
		tcGen vector 0.01 0 0   0 0.01 0  
	}
}

textures/sky_sicily/fence
{
	qer_editorimage textures/mohcommon/secfence1.tga
	qer_keyword skylimit
	//surfaceparm fence
	surfaceparm metal
	//surfaceparm playerclip
	//surfaceparm monsterclip
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	nopicmip
	//nomipmaps
	tessSize 32
	{
		map textures/mohcommon/secfence1.tga
		alphaFunc GT0
		alphaGen distfade 0.0 1024.0 //400.0
		blendfunc blend
	}
}


// not used
textures/sky_sicily/fence_old
{
	qer_editorimage textures/mohcommon/secfence1.tga
	qer_keyword skylimit
	surfaceparm fence
	surfaceparm metal
	surfaceparm playerclip
	surfaceparm monsterclip
	surfaceparm nomarks
	cull none
	nopicmip
	nomipmaps
	tessSize 32
	{
		map $whiteimage
		//rgbGen const 0.5 0.5 0.5
		//alphaGen oneminusdistfade 0.0 200.0
		alphaGen const 0.5
		//blendfunc blend
		//alphaGen distfade 20.0 50000.0
		blendfunc GL_ZERO GL_SRC_ALPHA
	}
	{
		map textures/mohcommon/secfence1.tga
		depthWrite
		alphaFunc GT0 //GE128
		alphaGen distfade 0.0 50.0 //120.0 //0.0 150.0
		blendfunc blend
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

textures/sky_sicily/asphalt_detail
{
	qer_editorimage textures/skylimit/sicily/asphalt_detail.tga
	qer_keyword skylimit
	polygonOffset
	//nomipmaps
	nopicmip
	surfaceparm nolightmap
	{
		map textures/skylimit/sicily/asphalt_detail.tga
		//alphaGen distfade 0.0 50.0
		//blendfunc blend
		tcMod scale 2.0 2.0
		blendfunc filter
	}
	{
		map textures/skylimit/sicily/asphalt_detail.tga
		//alphaGen distfade 0.0 50.0
		//blendfunc blend
		blendfunc filter
	}
}