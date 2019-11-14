var r = irandom_range(8,12)

var chunks = r * floor(argument0) 


repeat(chunks) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodChunks,-1)
	d.speedMax *= random_range(0,0.4)
	d.speed = d.speedMax
}

repeat(round(2*r*argument0)) {
	var d = createDebris(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodSplots,-1)
	d.speedMax *= random_range(0,1)
	d.speed = d.speedMax
}

repeat(round(r*argument0)) {
	var d = createDebrisEmitter(x+random_range(-6,6),y+random_range(-6,6),sprDebrisBloodEmitter,sprDebrisBloodSplots,hurtDirection+(random_range(-30,30)+random_range(-30,30))*ceil(argument0))
	d.speedMax *= random_range(1,2)
	d.speed = d.speedMax
}