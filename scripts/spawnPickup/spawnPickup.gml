var spawnWeightHP = max(0,0.15 - 0.03 * objPlayer.hp)
var spawnWeightAmmo = max(0,0.2 - 0.04 * objPlayer.grenadeCount - 0.12 * instance_number(objAmmoPickup))

spawnCoins()

if random(1) < spawnWeightHP then {
	instance_create_depth(x,y,depth,objHealthPickup)
} else if random_range(0,1-spawnWeightHP) < spawnWeightAmmo then {
	instance_create_depth(x,y,depth,objAmmoPickup)	
} else if _ENEMYSPAWNER.upgradeCap > 0 then {
	
	if _ENEMYSPAWNER.upgradeCap > 0 and random(1) < 3/(global.waveNumber+2) then {
		instance_create_depth(x,y,depth,objPickup)
		_ENEMYSPAWNER.upgradeCap--
	}
}	

//createTextPop(x,y-20,string(100*spawnWeightHP)+","+string(100*spawnWeightAmmo))

