event_inherited()

t--
if t <= 180 then {
	image_xscale = 1.1 - 0.1 * dcos(t * 6)
	image_yscale = image_xscale
}