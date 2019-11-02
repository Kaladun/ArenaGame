if height > 0 then {
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_ellipse(x-5,y-3,x+5,y+3,0)
	draw_set_alpha(1)
	
	draw_sprite_ext(sprite_index, image_index, x, y-height, image_xscale, image_yscale, image_angle, -1, 1)
} else {
	draw_self()	
}