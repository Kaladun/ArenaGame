var n = argument0
var iA = trade[n, shop.inputA]
var iB = trade[n, shop.inputB]
var out = trade[n, shop.output]

var qA = trade[n, shop.quantA]
var qB = trade[n, shop.quantB]
var qO = trade[n, shop.quantO]

if iA != -1 then {
	cA = script_execute(global.upgrade[iA, stat.cur])		
}
if iB != -1 then {
	cB = script_execute(global.upgrade[iB, stat.cur])		
}
if out != -1 then {
	cO = script_execute(global.upgrade[out, stat.cur])		
}

draw_set_halign(fa_right)
draw_set_color(c_white)
if iB != -1 then {
	draw_text(argument1, argument2-8, global.upgrade[iB, stat.name] + " : ")
}
draw_text(argument1, argument2, global.upgrade[iA, stat.name] + " : ")
draw_text(argument1, argument2+8, global.upgrade[out, stat.name] + " : ")

draw_set_halign(fa_left)
draw_set_color(c_red)
if iB != -1 then {
	draw_text(argument1, argument2-8, string(100 * script_execute(global.upgrade[iB, stat.predict], cB)) + "% -> " + string(100 * script_execute(global.upgrade[iB, stat.predict], cB - qB)) + "%")	
}
draw_text(argument1, argument2, string(100 * script_execute(global.upgrade[iA, stat.predict], cA)) + "% -> " + string(100 * script_execute(global.upgrade[iA, stat.predict], cA - qA)) + "%")	
draw_set_color(c_lime)

draw_text(argument1, argument2+8, string(100 * script_execute(global.upgrade[out, stat.predict], cO)) + "% -> " + string(100 * script_execute(global.upgrade[out, stat.predict], cO + qO)) + "%")	

draw_set_halign(fa_center)
draw_set_color(c_white)