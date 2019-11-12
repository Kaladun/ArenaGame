effVX = velX
effVY = velY

if effVX * effVX + effVY * effVY > velS * velS then {
	var r = (effVX * effVX + effVY * effVY)/velS
	r = sqrt(r)
	effVX /= r
	effVY /= r
}

if place_meeting(x+effVX, y, objWall) then {
	velX *= -1
	effVX *= -1
}

if place_meeting(x, y+effVY, objWall) then {
	velY *= -1
	effVY *= -1
}

x += effVX
y += effVY

velX *= f
velY *= f

if abs(velX) < threshold then {
	velX = 0	
} 

if abs(velY) < threshold then {
	velY = 0	
}

image_angle += dr
