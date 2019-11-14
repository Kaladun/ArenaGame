var r = round(irandom_range(8,12) * argument0)

repeat(r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodChunks,-1)
	d.speedMax *= random_range(0,0.4)
	d.speed = d.speedMax
}

repeat(2*r) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodSplots,-1)
	d.speedMax *= random_range(0,1)
	d.speed = d.speedMax
}

repeat(r) {
	var d = createDebrisEmitter(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodEmitter,sprDebrisBloodSplots,hurtDirection+random_range(-30,30)+random_range(-30,30))
	d.speedMax *= random_range(1,2)
	d.speed = d.speedMax
}