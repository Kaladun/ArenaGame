event_inherited()

fireTimer--

aiMoveBasic()
moveOffScreen()

target_angle = point_direction(x,y,objPlayer.x,objPlayer.y)
ad = angle_difference(image_angle, target_angle)
if ad < 0.5 then {
	image_angle = target_angle	
} else {
	image_angle -= ad * 0.5	
}

if fireTimer <= 0 then {
	fireTimer = fireTimerMax
	
	phantomFireBullet(image_angle)
	
	burstCount++
	if burstCount >= burstCountMax then {
		burstCount = 0
		fireTimer = burstTimerBonus
		
		dir = aiBasicDirection()
	}
	
}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)


if projectilePass then {
	t++
	image_alpha = 0.5 + 0.1 * sin(t * 0.01)
}