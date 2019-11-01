timer--
s = smoothstep(timer/timerMax)
speed = lerp(0, speedMax, s)
image_angle += da * s

projectileBounce()

if timer <= 0 then {
	depth = 0
}	