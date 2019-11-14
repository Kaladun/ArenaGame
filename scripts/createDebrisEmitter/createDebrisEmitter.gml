var d = instance_create_depth(argument0, argument1, 50, objDebrisEmitter)

d.sprite_index = argument2
d.image_index = irandom_range(0,sprite_get_number(argument2)-1)

d.subSprite = argument3

if argument4 != -1 then {
	d.direction = argument4
} else {
	d.direction = random_range(0,360)	
}

return d 