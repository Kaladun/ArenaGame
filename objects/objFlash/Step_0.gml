image_alpha = sqrt(max(0,t)/tMax)
t -= global.timeWarp

if t <= 0 then {
	instance_destroy()	
}