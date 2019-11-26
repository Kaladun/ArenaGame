tMax = 30
t = tMax

totalSpawn = 0
basicSpawn = 0
skilledSpawn = 0

armoredSpawn = 0
phantomSpawn = 0
gunnerSpawn = 0
bomberSpawn = 0

waveValuesSet()

spawnList = ds_list_create()

repeat(armoredSpawn) {
	ds_list_add(spawnList, objArmored)	
}

repeat(phantomSpawn) {
	ds_list_add(spawnList, objPhantom)	
}

repeat(gunnerSpawn) {
	ds_list_add(spawnList, objGunner)	
}

repeat(bomberSpawn) {
	ds_list_add(spawnList, objBomber)	
}

repeat(basicSpawn) {
	ds_list_add(spawnList, objEnemy)
}

repeat(skilledSpawn) {
	var r = random(1)
	var m = 1
		
	if r <= 0.4 then {
		type = objShotgunner
	} else if r < 0.8 then {
		type = objSniper
	} else {
		type = objKamikaze 
		m = max(3, ceil(0.6 * global.waveNumber))
	}
		
	repeat(m) {
		ds_list_add(spawnList, type)	
	}
}

ds_list_shuffle(spawnList)

upgradeCap = 1