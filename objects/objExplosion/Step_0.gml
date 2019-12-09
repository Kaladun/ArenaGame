timer -= global.timeWarp

if timer <= blastTime and not blast then {
	blast = true
	with(genericEnemy) {
		if point_distance(x,y,other.x,other.y) <= other.radius + sprite_width/2 and not grenadeImmune then {
			hp -= other.enemyDamage
			isHurt = true
			inExplosion = true
			hurtIntensity = 2
			hurtDirection = point_direction(other.x,other.y,x,y)
			hurtKnockback = 2
			screenShake(4)
		}
	}
	
	if instance_exists(objPlayer) then {
		if point_distance(x,y,objPlayer.x,objPlayer.y) <= radius + 6 then {
			hurtPlayer(playerDamage)
			screenShake(6)
		}
	}
	
	with(objBuzzsaw) {
		if point_distance(x,y,other.x,other.y) <= other.radius + 12	then {
			var d = point_direction(other.x, other.y, x, y)
			velX += lengthdir_x(18,d)
			velY += lengthdir_y(18,d)
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