event_inherited()

stateTimer--

if stateTimer <= 0 then {
	if state = 0 then {
		state = 1
		stateTimer = 60
	} else if state = 1 then {
		sniperFireBullet(dir)
		
		state = 0	
		stateTimer = irandom_range(stateTimerMin, stateTimerMax)
		dir = aiBasicDirection()
		computeGunAngle(dir)
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
	if stateTimer > gunLastT then {
		var px = objPlayer.x
		var py = objPlayer.y 
		var pdx = objPlayer.dx
		var pdy = objPlayer.dy
		var pv = objPlayer.vel
		
		gunLeadT = predictLeadTime(px, py, pdx * pv, pdy * pv, x, y, 4.0 * computeBulletSpeedMult())
		
		if gunLeadT < 0 then {
			dir = point_direction(x,y,px,py)
		} else {
			dir = point_direction(x,y,px + pdx * pv * (gunLeadT + gunLastT), py + pdy * pv * (gunLeadT + gunLastT))	
		}
		computeGunAngle(dir)
	}
}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)