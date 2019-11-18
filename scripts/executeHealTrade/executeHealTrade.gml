var iA = argument0
var qA = argument1

if iA != -1 then {	
	script_execute(global.upgrade[iA, stat.dec], qA)
} else {
	global.money -= qA
}

objPlayer.hp = clamp(objPlayer.hp + 1, 1, objPlayer.hpMax)