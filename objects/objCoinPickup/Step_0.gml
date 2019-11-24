if timer > 0 then {
	timer--
	s = smoothstep(timer/timerMax)
	speed = lerp(0, speedMax, s)

	projectileBounce()
} else {
	event_inherited()
}