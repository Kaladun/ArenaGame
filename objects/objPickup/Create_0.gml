event_inherited();


type = irandom_range(0,4)

name[0] = "FASTER BULLETS!"
name[1] = "FIRE RATE UP!"
name[2] = "MORE SHOTGUN!"
name[3] = "THICKER BULLETS"
name[4] = "TIGHTER SPREAD!"

/*
name[3] = "THICC"/*
var n = (global.bulletThicc - 1) / 0.05
for(var i = 0; i < n; i++) {
	name[3] += "C"	
}
name[3] += "ER BULLETS!"
*/

points = 1