tr = max(0,t)/tMax

image_alpha = sqrt(tr)
image_xscale = 1.25 - 0.25 * tr
image_yscale = image_xscale
t -= global.timeWarp

if t <= 0 then {
	instance_destroy()	
}