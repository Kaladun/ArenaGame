var r = round(irandom_range(6,8) * argument0)

repeat(r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodChunks,-1)
	d.speedMax *= random_range(0,0.4)
}

repeat(2*r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodSplots,-1)
	d.speedMax *= random_range(0,1)
}

repeat(4*r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodSplots,hurtDirection+random_range(-30,30)+random_range(-30,30))
	d.speedMax *= random_range(0,2)
}