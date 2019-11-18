var n = argument0
var iA = trade[n, shop.inputA]
var iB = trade[n, shop.inputB]
var out = trade[n, shop.output]

var qA = trade[n, shop.quantA]
var qB = trade[n, shop.quantB]
var qO = trade[n, shop.quantO]

if iA != -1 then {	
	script_execute(global.upgrade[iA, stat.dec], qA)
} else if qA > 0 {
	global.money -= qA
}

if iB != -1 then {	
	script_execute(global.upgrade[iB, stat.dec], qB)
} else if qB > 0 {
	global.money -= qB
}

script_execute(global.upgrade[out, stat.inc], qO)