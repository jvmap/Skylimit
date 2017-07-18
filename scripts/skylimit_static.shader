// Tree1-regular tree
skylimit_static_tree1_1	// Trunk
{
	qer_editorimage textures/models/natural/tree1_1.tga
	{
		map textures/models/natural/tree1_1.tga
		//alphaGen distFade 2304 0
		alphaGen distFade 72 0
		rgbgen vertex
		alphaFunc GT0
	}
}
skylimit_static_tree1_2 // Small fill branches
{
	qer_editorimage textures/models/natural/tree1_2.tga
	nomipmaps
	cull none
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree1_2.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 512 256
		alphaGen distFade 16 8
		rgbgen vertex
	}
}
skylimit_static_tree1_3 // Cross section
{
	qer_editorimage textures/models/natural/tree1_3.tga
	nomipmaps
	cull none
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree1_3.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 1536 512
		alphaGen distFade 48 16
		rgbgen vertex
	}
}
skylimit_static_tree1_4 // Horizontal cross section
{
	qer_editorimage textures/models/natural/tree1_4.tga
	nomipmaps
	
	//deformVertexes flap t 24 sin 0 3.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree1_4.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 256 256
		alphaGen distFade 8 8
		rgbgen vertex
	}
}
skylimit_static_tree1_5 // Fill leaves
{
	qer_editorimage textures/models/natural/tree1_5.tga
	nomipmaps
	cull none
	
	deformVertexes flap t 24 sin 0 3.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree1_5.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 1536 256
		alphaGen distFade 48 8
		rgbgen vertex
	}
}
skylimit_static_tree1sprite // Sprite version
{
	qer_editorimage textures/models/natural/tree1sprite.tga
	qer_trans 0
	nomipmaps
	deformVertexes autoSprite2
	cull none
	{
		clampmap textures/models/natural/tree1sprite.tga
		depthWrite
		alphaFunc GE128
		//alphaGen oneMinusDistFade 1216 512
		alphaGen oneMinusDistFade 38 16
		rgbgen vertex
	}
}

// Tree2  //birch
skylimit_static_tree2_1 //trunk
{
	qer_editorimage textures/models/natural/tree2_1.tga
	{
		map textures/models/natural/tree2_1.tga
		//alphaGen distFade 1000 600
		alphaGen distFade 32 16
		rgbgen vertex
		alphaFunc GT0
	}
}
skylimit_static_tree2_2 //vertacle cross plains
{
	qer_editorimage textures/models/natural/tree2_2.tga
	nomipmaps
	cull none
	{
		clampmap textures/models/natural/tree2_2.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 1200 500
		alphaGen distFade 38 16
		rgbgen vertex
	}
}
skylimit_static_tree2_3 //fill plains
{
	qer_editorimage textures/models/natural/tree2_3.tga
	nomipmaps
	cull none
	deformVertexes flap t 24 sin 2 3 0 .25 1 0
	{
		clampmap textures/models/natural/tree2_3.tga
		depthWrite
		alphaFunc GE128
		//alphaGen distFade 2100 1500
		alphaGen distFade 66 47
		rgbgen vertex
	}
}
skylimit_static_tree2_4 //horizontal plains
{
	qer_editorimage textures/models/natural/tree2_4.tga
	nomipmaps
	cull none
	{
		clampmap textures/models/natural/tree2_4.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 16 16
		rgbgen vertex
	}
}
skylimit_static_tree2sprite //birch sprite
{
	qer_editorimage textures/models/natural/tree2sprite.tga
	qer_trans 0
	nomipmaps
	deformVertexes autoSprite2
	cull none
	{
		clampmap textures/models/natural/tree2sprite.tga
		depthWrite
		alphaFunc GE128
		alphaGen oneMinusDistFade 28 16
		rgbgen vertex
	}
}

// Tree2a //juniper
skylimit_static_tree2a_1 //trunk
{
	qer_editorimage textures/models/natural/tree2a_1.tga
	{
		map textures/models/natural/tree2a_1.tga
		rgbGen vertex
		alphaGen distFade 32 16
		alphaFunc GT0
	}
}

skylimit_static_tree2a_2 //vertacle cross plains
{
	qer_editorimage textures/models/natural/tree2a_2.tga
	nomipmaps
	cull none
	//deformVertexes flap t 24 sin 0 3.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree2a_2.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 38 16
		rgbGen vertex
	}
}

skylimit_static_tree2a_3 //fill plains
{
	qer_editorimage textures/models/natural/tree2a_3.tga
	nomipmaps
	cull none
	//deformVertexes flap t 24 sin 0 3.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 3.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree2a_3.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 66 47
		rgbGen vertex
	}
}

skylimit_static_tree2a_4 //horizontal plains
{
	qer_editorimage textures/models/natural/tree2a_4.tga
	nomipmaps
	cull none
	//deformVertexes wave 24 sin 0 1.5 0    0.2 
	deformVertexes wave 24 sin 0 1.5 0.25 0.3 
	{
		clampmap textures/models/natural/tree2a_4.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 16 16
		rgbGen vertex
	}
}

skylimit_static_tree2asprite //juniper sprite
{
	qer_editorimage textures/models/natural/tree2asprite.tga
	qer_trans 0
	nomipmaps
	deformVertexes autoSprite2
	cull none
	{
		clampmap textures/models/natural/tree2asprite.tga
		depthWrite
		alphaFunc GE128
		alphaGen oneMinusDistFade 28 16
		rgbGen vertex
	}
}

// Tree3-small pine tree
skylimit_static_tree3_1
{
	qer_editorimage textures/models/natural/tree3_1.tga
	{
		map textures/models/natural/tree3_1.tga
		alphaFunc GT0
		alphaGen distFade 64 64
		rgbGen vertex
	}
}
skylimit_static_tree3_2
{
	qer_editorimage textures/models/natural/tree3_2.tga
	cull none
	{
		clampmap textures/models/natural/tree3_2.tga
		depthWrite
		alphafunc GE128
		alphaGen distFade 64 64
		rgbGen vertex
	}
}
skylimit_static_tree3_3
{
	qer_editorimage textures/models/natural/tree3_3.tga
	cull none
	{
		clampmap textures/models/natural/tree3_3.tga
		depthWrite
		alphafunc GE128
		alphaGen distFade 64 64
		rgbGen vertex
	}
}

// Tree4  //Oak type tree
skylimit_static_tree4_1 //trunk
{
	qer_editorimage textures/models/natural/tree4_1.tga
	{
		map textures/models/natural/tree4_1.tga
		rgbGen vertex
		alphaGen distFade 63 18
		alphaFunc GT0
	}
}
skylimit_static_tree4_2 //vertical cross section
{
	qer_editorimage textures/models/natural/tree4_2.tga
	nomipmaps
	cull none
	//deformVertexes flap t 24 sin 0 2.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 2.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree4_2.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 63 47
		rgbGen vertex
	}
}
skylimit_static_tree4_3 //fill plains
{
	qer_editorimage textures/models/natural/tree4_3.tga
	nomipmaps
	cull none
	//deformVertexes flap t 24 sin 0 2.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 2.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree4_3.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 44 44
		rgbGen vertex
	}
}
skylimit_static_tree4_4 //horizontal cross plains
{
	qer_editorimage textures/models/natural/tree4radial.tga
	nomipmaps
	cull none
	//deformVertexes wave 24 sin 0 0.5 0    0.2
	deformVertexes wave 24 sin 0 0.5 0.25 0.3
	{
		clampmap textures/models/natural/tree4radial.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 8 8
		rgbGen vertex
	}
}
skylimit_static_tree4_6 // Small fill branches
{
	qer_editorimage textures/models/natural/tree4_3.tga
	nomipmaps
	cull none
	//deformVertexes flap t 24 sin 0 2.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 2.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree4_3.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 32 32
		rgbGen vertex
	}
}
skylimit_static_tree4_7 // inner buffer branches
{
	qer_editorimage textures/models/natural/tree4radial.tga
	nomipmaps
   
	//deformVertexes flap t 24 sin 0 1.5 0    0.2 1 0
	deformVertexes flap t 24 sin 0 1.5 0.25 0.3 1 0
	{
		clampmap textures/models/natural/tree4radial.tga
		depthWrite
		alphaFunc GE128
		alphaGen distFade 10 10
		rgbGen vertex
	}
}
skylimit_static_tree4sprite // Sprite version
{
	qer_editorimage textures/models/natural/tree4sprite.tga
	qer_trans 0
	nomipmaps
	deformVertexes autoSprite2
	cull none
	{
		clampmap textures/models/natural/tree4sprite.tga
		depthWrite
		alphaFunc GE128
		alphaGen oneMinusDistFade 28 28
		rgbGen vertex
	}
}