var r = round(irandom_range(6,8) * argument0)

repeat(r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBlood,-1)
	d.speedMax *= random_range(0,0.4)
}

repeat(r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBlood,-1)
	d.speedMax *= random_range(0.7,1)
}

repeat(r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBlood,hurtDirection+random_range(-30,30))
	d.speedMax *= random_range(1,1.25)
}