if argument0 then {
	draw_set_color(merge_color(c_black, c_lime, 0.5))
} else {
	draw_set_color(merge_color(c_black, c_red, 0.5))
}	

draw_set_alpha(0.5)
draw_rectangle(argument1, argument2, argument3, argument4, false)
draw_set_alpha(1)

if argument0 then {
	draw_set_color(c_lime)
} else {
	draw_set_color(c_red)
}	

draw_rectangle(argument1, argument2, argument3, argument4, true)