event_inherited()

if inExplosion then {
	hasArmor = false
	bulletImmune = false
}

stateTimer--

if stateTimer <= 0 then {
	if state = 0 then {
		state = 1
		stateTimer = 60
	} else if state = 1 then {
		armoredFireBullet(image_angle, 35)
		
		state = 0	
		stateTimer = irandom_range(stateTimerMin, stateTimerMax)
		dir = aiBasicDirection()
		image_angle = dir
	}
}

if state = 0 then {
	aiVelMult = 1	
} else {
	aiVelMult = 0
}

aiMoveBasic()
moveOffScreen()

if state = 1 then {
	if stateTimer > fireTimer then {
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y)
	}
}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)