event_inherited()

stateTimer--

if stateTimer <= 0 then {
	if state = 0 then {
		state = 1
		stateTimer = 60
	} else if state = 1 then {
		enemyFireBullet(dir)
		
		state = 0	
		stateTimer = irandom_range(stateTimerMin, stateTimerMax)
		dir = aiBasicDirection()
		computeGunAngle(dir)
	}
}

if state = 0 then {
	aiMoveBasic()
	moveOffScreen()
} else if state = 1 then {
	if stateTimer > fireTimer then {
		dir = point_direction(x,y,objPlayer.x,objPlayer.y)
		computeGunAngle(dir)
	}
}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)