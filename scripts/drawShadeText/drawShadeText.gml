var dtx = floor(argument0)
var dty = floor(argument1)

draw_set_color(c_black)
draw_text(dtx+1, dty, argument2)
draw_text(dtx-1, dty, argument2)
draw_text(dtx, dty+1, argument2)
draw_text(dtx, dty-1, argument2)

draw_set_color(argument3)
draw_text(dtx, dty, argument2)
