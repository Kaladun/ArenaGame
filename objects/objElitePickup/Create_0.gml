event_inherited();



type = irandom_range(0,1)

name[0] = "BOUNCING BULLETS!"
name[1] = "HOMING BULLETS!"

/*
name[3] = "THICC"/*
var n = (global.bulletThicc - 1) / 0.05
for(var i = 0; i < n; i++) {
	name[3] += "C"	
}
name[3] += "ER BULLETS!"
*/

points = global.waveNumber * 3