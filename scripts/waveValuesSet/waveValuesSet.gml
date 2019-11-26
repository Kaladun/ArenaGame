waveBase = 2 * global.waveNumber + 1

_ENEMYSPAWNER.totalSpawn = waveBase + 3 * global.burstNumber
_ENEMYSPAWNER.gunnerSpawn = 0
_ENEMYSPAWNER.armoredSpawn = 0
_ENEMYSPAWNER.phantomSpawn = 0
_ENEMYSPAWNER.bomberSpawn = 1

var specialSpawn = max(0, ceil(global.waveNumber/2) - 2 + global.burstNumber)
_ENEMYSPAWNER.basicSpawn = _ENEMYSPAWNER.totalSpawn - specialSpawn
_ENEMYSPAWNER.skilledSpawn = irandom_range(floor(_ENEMYSPAWNER.basicSpawn / 6), floor(_ENEMYSPAWNER.basicSpawn / 2))

if global.waveNumber = 0 then {
	_ENEMYSPAWNER.skilledSpawn = floor(global.burstNumber / 2)
} 

_ENEMYSPAWNER.basicSpawn -= _ENEMYSPAWNER.skilledSpawn
//var specialSpawn = floor(power(max(0, floor(global.waveNumber)-2),0.7))
//createTextPop(300,300,"SPAWN:"+string(specialSpawn))

while(specialSpawn > 0) {
	r = irandom_range(0,3)
	
	if r = 0 then {
		_ENEMYSPAWNER.armoredSpawn += 1
	} else if r = 1 then {
		_ENEMYSPAWNER.phantomSpawn += 1	
	} else if r = 2 then {
		_ENEMYSPAWNER.gunnerSpawn += 1
	} else if r = 3 then {
		_ENEMYSPAWNER.bomberSpawn += 1
	}	
//_ENEMYSPAWNER.phantomSpawn = 0//specialSpawn - _ENEMYSPAWNER.armoredSpawn

	specialSpawn--
}

_ENEMYSPAWNER.upgradeCap = _ENEMYSPAWNER.totalSpawn //min(5+global.waveNumber,_ENEMYSPAWNER.totalSpawn)