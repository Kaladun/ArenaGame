event_inherited()

fireTimer--

aiMoveBasic()
moveOffScreen()

target_angle = point_direction(x,y,objPlayer.x,objPlayer.y)
ad = angle_difference(gunDir, target_angle)
if ad < 0.5 then {
	gunDir = target_angle	
} else {
	gunDir -= ad * 0.5	
}

computeGunAngle(gunDir)

if fireTimer <= 0 then {
	fireTimer = fireTimerMax
	
	phantomFireBullet(gunDir)
	
	burstCount++
	if burstCount >= burstCountMax then {
		burstCount = 0
		fireTimer = burstTimerBonus
		
		dir = aiBasicDirection()		
	}	
}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)