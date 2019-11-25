draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(-100,-100,500,400,false)
draw_set_alpha(1)

if instance_number(_SHOP) <= 0 then {
	draw_set_color(c_white)

	draw_set_halign(fa_center)
	t++
	var angle = 5*sin(t*0.02)
	draw_text_transformed(gx/2, gy*0.3, "WAVE " + string(global.waveNumber) + " COMPLETE!", 4, 4, angle)

	draw_text(gx/2, gy*0.9, "PUSH [SPACE] TO CONTINUE")
	draw_text(gx/2, gy*0.9+15, "CLICK [LMB] TO UPGRADE")

	if keyboard_check_pressed(vk_space) then {
		startNewWave()
		instance_destroy()
	}

	if mouse_check_button_pressed(mb_left) then {
		instance_create_depth(0,0,-100, _SHOP)	
		wentShopping = true
	}
}