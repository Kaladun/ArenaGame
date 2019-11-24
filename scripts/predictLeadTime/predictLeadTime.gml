// PLAYER X, Y, VX, VY
var txx = argument0
var tyy = argument1
var vxx = argument2
var vyy = argument3

var gxx = argument4
var gyy = argument5
var gsp = argument6

var vm2 = vxx * vxx + vyy * vyy
var aa = vm2 - gsp * gsp
var bb = 2 * (txx * vxx + tyy * vyy - gxx * vxx - gyy * vyy)
var cc = (txx - gxx) * (txx - gxx) + (tyy - gyy) * (tyy - gyy)

if abs(aa) < 0.01 then {
	return -cc / bb
} else {
	var dd = bb * bb - 4 * aa * cc
	if dd < 0 then {
		return -1
	} else if dd = 0 then {
		return - bb / (2*aa)	
	} else {
		var tt1 = (-bb + sqrt(bb * bb - 4 * aa * cc)) / (2*aa)
		var tt2 = (-bb - sqrt(bb * bb - 4 * aa * cc)) / (2*aa)
		
		if tt1 < 0 then tt1 = 1000
		if tt2 < 0 then tt2 = 1000
		
		if tt1 = 1000 and tt2 = 1000 then {
			return -1 	
		}
		
		return min(tt1, tt2)
	}
}