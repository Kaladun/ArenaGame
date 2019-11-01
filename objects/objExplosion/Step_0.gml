timer--

if timer = 30 then {
	with(genericEnemy) {
		if point_distance(x,y,other.x,other.y) <= other.radius + sprite_width/2 and not grenadeImmune then {
			hp -= other.enemyDamage
			isHurt = true
			inExplosion = true
			screenShake(4)
		}
	}
	
	with(objPlayer) {
		if not isDashing then {
			if point_distance(x,y,other.x,other.y) <= other.radius + sprite_width/2 then {
				hp -= other.playerDamage
				hurt = hurtMax
				screenShake(6)
				audioPlayPitch(sfxPlayerHurt, 3, 0.1)
				sleep(10)
			}
		}
	}
	
	with(objGrenade) {
		if point_distance(x,y,other.x,other.y) <= other.radius + sprite_width/2 then {
			instance_destroy()	
		}
	}
	
	with(objWall) {
		if point_distance(x+8,y+8,other.x,other.y) <= other.radius + 8 then {
			hp--	
		}
	}
}

if timer <= 0 then {
	instance_destroy()	
}