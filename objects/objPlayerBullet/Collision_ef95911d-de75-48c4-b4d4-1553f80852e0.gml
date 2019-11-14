if not ds_list_find_index(hitList, other.id) then {

	if not other.bulletImmune then {
		other.isHurt = true
		other.hp -= damage
		other.hurtKnockback = 3
		other.hurtDirection = direction
		other.hurtIntensity = 1
	}

	if not other.projectilePass then {
		if random(1) > piercingOdds then {
			instance_destroy()
		} else {
			ds_list_add(hitList, other.id)	
		}
	}
	
}