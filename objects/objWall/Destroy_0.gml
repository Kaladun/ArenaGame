r = 2
if hp = 0 then {
	r = 6	
}

repeat(r) {
	createDebris(x+random_range(0,16), y+random_range(0,16), sprDebrisWood, -1)	
}