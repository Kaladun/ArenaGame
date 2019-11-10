if gunSprite != -1 then {
	draw_sprite_ext(gunSprite, 0, x+drawGunOffsetX * image_xscale + 1, y+drawGunOffsetY + 1, image_xscale, 1, drawGunAngle, c_black, 1)
	draw_sprite_ext(gunSprite, 0, x+drawGunOffsetX * image_xscale + 1, y+drawGunOffsetY - 1, image_xscale, 1, drawGunAngle, c_black, 1)
	draw_sprite_ext(gunSprite, 0, x+drawGunOffsetX * image_xscale - 1, y+drawGunOffsetY + 1, image_xscale, 1, drawGunAngle, c_black, 1)
	draw_sprite_ext(gunSprite, 0, x+drawGunOffsetX * image_xscale - 1, y+drawGunOffsetY - 1, image_xscale, 1, drawGunAngle, c_black, 1)
}

draw_sprite_ext(sprite_index, image_index, x+1, y+1, image_xscale, image_yscale, 0, c_black, 1)
draw_sprite_ext(sprite_index, image_index, x+1, y-1, image_xscale, image_yscale, 0, c_black, 1)
draw_sprite_ext(sprite_index, image_index, x-1, y+1, image_xscale, image_yscale, 0, c_black, 1)
draw_sprite_ext(sprite_index, image_index, x-1, y-1, image_xscale, image_yscale, 0, c_black, 1)


draw_self()

if gunSprite != -1 then {
	draw_sprite_ext(gunSprite, 0, x+drawGunOffsetX * image_xscale, y+drawGunOffsetY, image_xscale, 1, drawGunAngle, -1, 1)
}