// shader names must be short as possible
// b/c they have to be stufftexted

sl_inone
{
}

// tilin
sl_inonet
{
	{
		clampmap textures/skylimit/hud/items/ammos.tga
		alphaFunc GE128
		blendfunc GL_ZERO GL_ONE // this is unfoggable
	}
}

// ammo
sl_as
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/ammos.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_am
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/ammom.tga
		alphaFunc GT0
		blendFunc blend
	}
}

sl_al
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/ammol.tga
		alphaFunc GT0
		blendFunc blend
	}
}

sl_axl
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/ammoxl.tga
		alphaFunc GT0
		blendFunc blend
	}
}

// weaps
sl_wmg17
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg17.tga
		alphaFunc GE128
		blendFunc blend
		rgbGen const 0.9 1.0 1.0
	}
}

sl_wmg17j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg17.tga
		alphaFunc GE128
		blendFunc blend
		rgbGen const 1.0 0.2 0.0
	}
}

sl_wmgf
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/machinegun_flexible.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_wmgfj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/machinegun_flexible.tga
		alphaFunc GE128
		blendFunc blend
		rgbGen const 1.0 0.2 0.0
	}
}

sl_wb5
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/browning50.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wb5j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/browning50.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_wb3
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/browning303.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wb3j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/browning303.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_whsp
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/hispano.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_whspj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/hispano.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_wmg131
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg131.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wmg131j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg131.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_wmg151
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg151.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wmg151j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mg151.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_wmgff
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mgff.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wmgffj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mgff.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_wmk108
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mk108.tga
		alphaFunc GE128
		rgbGen const 0.5 0.5 0.5
		blendFunc blend
	}
}

sl_wmk108j
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/mk108.tga
		alphaFunc GE128
		rgbGen const 1.0 0.2 0.0
		blendFunc blend
	}
}

sl_ibmbg
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/bomb_big.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ibmsml
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/bomb_small.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_iat
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/anti_tank.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ibst
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/boost.tga
		alphaFunc GE128
		blendFunc blend
	nextbundle
		map textures/skylimit/hud/items/boost_gradient.tga
		tcMod scroll 0.0 0.25
	}
}

sl_itpd
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/torpedo.tga
		alphaFunc GE128
		blendFunc blend
	}
}


sl_ib17tchin
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_chin.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17tchinj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_chin.tga
		rgbGen const 1.0 0.0 0.0
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17tdrsl
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_dorsal.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17tdrslj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_dorsal.tga
		rgbGen const 1.0 0.0 0.0
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17tvntrl
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_ventral.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17tvntrlj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_ventral.tga
		rgbGen const 1.0 0.0 0.0
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17ttl
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_tail.tga
		alphaFunc GE128
		blendFunc blend
	}
}

sl_ib17ttlj
{
	nopicmip
	{
		clampmap textures/skylimit/hud/items/b17_turret_tail.tga
		rgbGen const 1.0 0.0 0.0
		alphaFunc GE128
		blendFunc blend
	}
}