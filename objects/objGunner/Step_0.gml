event_inherited()

stateTimer -= global.timeWarp

if stateTimer <= 0 then {
	stateTimer = irandom_range(stateTimerMin, stateTimerMax)
	dir = aiBasicDirection()
}

aiMoveBasic()
moveOffScreen()
computeGunAngle(point_direction(x,y,targetX,targetY))

targetX = objPlayer.x
targetY = objPlayer.y

gunTimer--
if gunTimer <= 0 then {
	gunTimer = gunTimerMax
	var d = point_direction(x,y,targetX,targetY)
	gunnerFireBullet(d)
	
	burstCounter++
	if burstCounter >= burstCounterMax then {
		burstCounter = 0
		gunTimer += gunTimerBonus
	}	
}


x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)