if timer > 0 then {
	timer--
	s = smoothstep(timer/timerMax)
	speed = lerp(0, speedMax, s)
	image_angle += dr

	projectileBounce()
} else {
	event_inherited()
}