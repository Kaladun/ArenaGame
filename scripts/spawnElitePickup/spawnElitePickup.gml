var spawnWeightHP = max(0,0.5 - 0.1 * objPlayer.hp)
var spawnWeightAmmo = max(0,0.3 - 0.06 * objPlayer.grenadeCount - 0.2 * instance_number(objAmmoPickup))

if random(1) < spawnWeightHP then {
	instance_create_depth(x-4,y,depth,objHealthPickup)
	instance_create_depth(x+4,y,depth,objHealthPickup)
} else if random_range(0,1-spawnWeightHP) < spawnWeightAmmo then {
	instance_create_depth(x,y,depth,objAmmoPickup)	
} else {
	instance_create_depth(x,y,depth,objPickup)	
}

//createTextPop(x,y-20,string(100*spawnWeightHP)+","+string(100*spawnWeightAmmo))