event_inherited()

if not hasExploded and not summon and random(1) < 0.33 then {
	spawnPickup()	
}

instance_create_depth(x,y,0,objSmallExplosion)