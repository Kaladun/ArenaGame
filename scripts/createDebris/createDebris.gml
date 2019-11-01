var d = instance_create_depth(argument0, argument1, 50, objDebris)

d.sprite_index = argument2
d.image_index = irandom_range(0,sprite_get_number(argument2)-1)

if argument3 != -1 then {
	d.direction = argument3
} else {
	d.direction = random_range(0,360)	
}

return d 