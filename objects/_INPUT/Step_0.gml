if global.gamepad then {
	dx = gamepad_axis_value(0, gp_axislh)
	dy = gamepad_axis_value(0, gp_axislv)
	
	lx = gamepad_axis_value(0, gp_axisrh)
	ly = gamepad_axis_value(0, gp_axisrv)
	
	shootPrimary = gamepad_button_check(0, gp_shoulderrb) + gamepad_button_check(0, gp_face1)
	shootPrimaryPressed = gamepad_button_check(0, gp_shoulderrb) + gamepad_button_check_pressed(0, gp_face1)
	
	shootSecondary = gamepad_button_check(0, gp_shoulderlb) + gamepad_button_check(0, gp_face2)
	shootSecondaryPressed = gamepad_button_check(0, gp_shoulderlb) + gamepad_button_check_pressed(0, gp_face2) 
	
	dashPressed = gamepad_button_check_pressed(0, gp_face3)
	
	grenadePressed = gamepad_button_check_pressed(0, gp_shoulderr) + gamepad_button_check_pressed(0, gp_shoulderl)
	grenadeDown = gamepad_button_check(0, gp_shoulderr) + gamepad_button_check(0, gp_shoulderl)
	grenadeReleased = gamepad_button_check_released(0, gp_shoulderr) + gamepad_button_check_released(0, gp_shoulderl)
	
	rumble = sqrt(global.screenShakeTotal) * 0.2 * random_range(0.8,1) 
	gamepad_set_vibration(0, rumble, rumble)
	
} else {
	dx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	dy = keyboard_check(ord("S")) - keyboard_check(ord("W"))
	
	shootPrimary  = mouse_check_button(mb_left)
	shootPrimaryPressed = mouse_check_button_pressed(mb_left)
	
	shootSecondary  = mouse_check_button(mb_right)
	shootSecondaryPressed = mouse_check_button_pressed(mb_right)
	
	dashPressed = keyboard_check_pressed(vk_space)
	
	grenadePressed = keyboard_check_pressed(vk_lshift)
	grenadeDown = keyboard_check(vk_lshift)
	grenadeReleased = keyboard_check_released(vk_lshift)
}

if keyboard_check_pressed(vk_escape) then {
	game_end()	
}