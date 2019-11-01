if type = 0 then {
	global.bulletBounce += 1
} else if type = 1 then {
	global.bulletHomingBase += 1
} 

createTextPop(x,y,name[type])
scoreAddPickup(points)

/*n = 2 + global.bulletBounce + global.bulletHomingBase
nr = irandom_range(0,n)
_ENEMYSPAWNER.totalSpawn += n 
_ENEMYSPAWNER.armoredSpawn += nr
_ENEMYSPAWNER.phantomSpawn += (n - nr)*/

instance_destroy()