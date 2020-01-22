global.gamepad = false
if gamepad_is_connected(0)> 0 then {
	global.gamepad = true
	gamepad_set_axis_deadzone(0,0.25)
}

dx = 0
dy = 0
lx = 0
ly = 0

shootPrimary = 0
shootPrimaryPressed = 0

shootSecondary = 0
shootSecondaryPressed = 0

dashPressed = 0
grenadePressed = 0
grenadeDown = 0
grenadeReleased = 0 