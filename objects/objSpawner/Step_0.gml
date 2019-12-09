timer -= global.timeWarp

if timer > timerHalf then {
	s = timer - timerHalf 
	image_alpha = lerp(1,0,smoothstep(s/timerHalf ))
} else {
	image_alpha = 1
	image_blend = merge_color(c_red, c_white, smoothstep(timer/timerHalf ))
}

if timer <= 0 then {
	instance_create_depth(x,y,0,object)	
	instance_destroy()
}

if timer = timerSound then {
	audioPlayPitch(sfxSpawn,0,0.05)	
}