global.gamepad = false
if gamepad_is_connected(0)> 0 then {
	global.gamepad = true
	gamepad_set_axis_deadzone(0,0.25)
}

dx = 0
dy = 0
lx = 0
ly = 0
shoot = 0
shootPressed = 0
dashPressed = 0
grenadePressed = 0