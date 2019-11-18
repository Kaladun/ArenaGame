repeat(2) {
	var d = createDebris(x+random_range(0,16), y+random_range(0,16), sprDebrisWood, -1)	
	d.speedMax = 0
	d.speed = 0
}

if hp <= 0 then {
	repeat(4) {
		createDebris(x+random_range(0,16), y+random_range(0,16), sprDebrisWood, -1)	
	}
}