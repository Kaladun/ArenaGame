var iA = argument0
var qA = argument1


if iA != -1 then {
	cA = script_execute(global.upgrade[iA, stat.cur])		
}

draw_set_halign(fa_right)
draw_set_color(c_white)
if iA != -1 then {
	draw_text(argument2, argument3, global.upgrade[iA, stat.name] + " : ")
} else {
	draw_text(argument2, argument3, "Scrap Cost : ")
}

draw_set_halign(fa_left)
draw_set_color(c_red)

if iA != -1 then {
	draw_text(argument2, argument3, string(100 * script_execute(global.upgrade[iA, stat.predict], cA)) + "% -> " + string(100 * script_execute(global.upgrade[iA, stat.predict], cA - qA)) + "%")	
} else {
	draw_text(argument2, argument3, "$" + string(qA))	
}
draw_set_color(c_lime)

draw_set_halign(fa_center)
draw_text(argument2, argument3+8, "Heal 1 Heart")	


draw_set_color(c_white)