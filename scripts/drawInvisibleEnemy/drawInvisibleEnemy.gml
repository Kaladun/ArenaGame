var surf = surface_create(32,32)
surface_set_target(surf)

draw_clear_alpha(c_fuchsia, 1)

draw_sprite_ext(sprite_index, image_index, 16, 24, image_xscale, 1, 0, -1, 1)

if gunSprite != -1 then {
	if argument0 != 0 then {
		shader_set(sdrWhiteLevel)
		shaderWhiteLevel = shader_get_uniform(sdrWhiteLevel, "u_Level")
		shader_set_uniform_f(shaderWhiteLevel, argument0)
		
	}
	draw_sprite_ext(gunSprite, 0, 16+drawGunOffsetX * image_xscale, 24+drawGunOffsetY, image_xscale, 1, drawGunAngle, -1, 1)
	shader_reset()
}

if image_xscale = 1 then {
	draw_sprite(sprDitherMask, 0, 0, 0)
} else {
	draw_sprite(sprDitherMask, 0, 1, 0)	
}
surface_reset_target()

shader_set(sdrDeleteFuchsia)
draw_surface(surf,x-16,y-24)
shader_reset()

surface_free(surf)