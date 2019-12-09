//image_angle += dr

moveOffScreen()

if instance_number(_WAVETRANSITION) > 0 then {
	attractRange += 4
}
	
d = point_distance(x,y,objPlayer.x,objPlayer.y) 
if d <= attractRange then {
	direction = point_direction(x,y,objPlayer.x,objPlayer.y) 
	speed = lerp(5,0,smoothstep(d/attractRange)) * global.timeWarp
} else {
	speed = 0	
}