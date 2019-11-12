if place_meeting(x+velX, y, objWall) then {
	velX *= -1
}

if place_meeting(x, y+velY, objWall) then {
	velY *= -1
}

x += velX
y += velY



velX *= f
velY *= f

if abs(velX) < threshold then {
	velX = 0	
} 

if abs(velY) < threshold then {
	velY = 0	
}

image_angle += dr
