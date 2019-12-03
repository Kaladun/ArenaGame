if keyboard_check(ord("B")) then {
	if keyboard_check_pressed(ord("R")) then {global.cameraRound = (global.cameraRound + 1) mod 2}	

	if keyboard_check_pressed(ord("J")) then {global.bulletPlayerFrame = (global.bulletPlayerFrame + 1) mod 2}
	
	if keyboard_check_pressed(ord("K")) then {global.bulletEnemyFrame = (global.bulletEnemyFrame + 1) mod 2}
}