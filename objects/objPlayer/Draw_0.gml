/*
var px = x + lengthdir_x(6,image_angle)
var py = y + lengthdir_y(6,image_angle)
draw_set_color(c_orange)
draw_line(px,py,px+lengthdir_x(48,image_angle-10),py+lengthdir_y(48,image_angle-10))
draw_line(px,py,px+lengthdir_x(48,image_angle+10),py+lengthdir_y(48,image_angle+10))
draw_set_color(c_red)
draw_line(px,py,px+lengthdir_x(48,image_angle-10*computeVarianceMult()),py+lengthdir_y(48,image_angle-10*computeVarianceMult()))
draw_line(px,py,px+lengthdir_x(48,image_angle+10*computeVarianceMult()),py+lengthdir_y(48,image_angle+10*computeVarianceMult()))
*/

if grenadePredict > 0 then {
	var gpx = x + lengthdir_x(grenadePredict - 8, dir)
	var gpy = y + lengthdir_y(grenadePredict - 8, dir)
	
	draw_sprite_ext(sprGrenadePredictor, 1, gpx, gpy, 1,1, dir, -1,1)
	draw_sprite_ext(sprGrenadePredictor, 0, x,y, grenadePredict/8 - 1, 1, dir, -1,1)
}		

if hurt > 0 then {
	if hurt % 6 >= 3 then {
		shader_set(sdrWhite)
	}
		
	drawPlayer()
		
	shader_reset()
	hurt--
	
	if hurt <= 0 then {
		room_speed = 60		
	}
} else {
	drawPlayer()
}

if isDashing then {
	da = ds * random_range(0.7,1)
	draw_sprite_ext(sprDeflectAura, 0, x, y, image_xscale, image_yscale, dashDir, -1, da)	
}