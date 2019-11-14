timer--
s = smoothstep(timer/timerMax)
speed = lerp(0, speedMax, s)
image_angle += da * s

projectileBounce()

if timer <= 0 then {
	depth = 0
} else {
	var d = createDebris(x,y,subSprite,-1)
	d.speedMax = 0
	d.speed = 0	
}