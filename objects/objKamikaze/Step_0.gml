event_inherited();


if random(1) < 0.0067 then {
	dir = aiBasicDirection()
}

if point_distance(x,y,objPlayer.x,objPlayer.y) <= chaseRange and chaseDelay <= 0 then {	
	if vel = velDefault and t <= 0 then {
		var tp = createTextAnchor(x,y,"!",self.id,0,-3)
		tp.t = 30
		t = 120
	}	
	
	vel = velChase
	dir = point_direction(x,y,objPlayer.x,objPlayer.y)
	
} else {
	vel = velDefault
}	

aiMoveBasic()
moveOffScreen()

image_xscale = 1
if dir > 90 and dir < 270 then {image_xscale = -1}

x = clamp(x,6,room_width-6)
y = clamp(y,6,room_height-6)

if t > 0 then {
	t--
}	

if chaseDelay > 0 then {
	chaseDelay--	
}
		