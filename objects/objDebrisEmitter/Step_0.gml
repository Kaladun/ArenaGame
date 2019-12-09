timer -= global.timeWarp
s = smoothstep(timer/timerMax)
speed = lerp(0, speedMax, s) * global.timeWarp
image_angle += da * s * global.timeWarp

projectileBounce()

if timer <= 0 then {
	depth = 0
} else {
	var d = createDebris(x,y,subSprite,-1)
	d.speedMax = 0
	d.speed = 0	
}