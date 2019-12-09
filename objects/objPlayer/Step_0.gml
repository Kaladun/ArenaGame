if not isDead {
	
	if not isDashing then {
	// MOVE
		inputMove()

		vel = baseVel * computeSpeedMult() 
		var tx = dx * vel + bulletKickX
		var ty = dy * vel + bulletKickY
		
		bulletKickX = 0
		bulletKickY = 0
		
		moveBasic(tx, ty)
		moveOffScreen()
		
		dir = inputDirection()
		computeGunAngle(dir)
		
	// BULLET

		if (bulletCooldown <= 0 and _INPUT.shoot) or (bulletQueue and bulletCooldown <= ceil(bulletCooldownSpam * computeCooldownMult() )) {
			bulletCooldown += bulletCooldownMax / computeCooldownMult()
			bulletQueue = false
			
			playerFireBullet(objPlayerBullet, dir)
			
			if random(1) < computeBackblastOdds() then {
				playerFireBullet(objPlayerBullet, dir + 180)	
			}
			
			audioPlayPitch(sfxPlayerShoot, 1, 0.1)
			screenShake(3)
			
			bulletKickX += lengthdir_x(bulletKick, dir)
			bulletKickY += lengthdir_y(bulletKick, dir)
			
		} else if _INPUT.shootPressed {
			bulletQueue = true
		}
		
	// GRENADE
		
		if grenadeCount > 0 then {
			if _INPUT.grenadeDown then {
				grenadeVel = clamp(grenadeVel + grenadeAccel * global.timeWarp, 0, grenadeVelMax)
				grenadePredict = grenadeVtoD(grenadeVel)
		
			} else if _INPUT.grenadeReleased then {		
				var grenade = instance_create_depth(x,y,-50,objGrenade)	
				grenade.direction = dir + random_range(-2,2) + random_range(-2,2)
				grenade.speed = grenadeVel
				grenade.speedMax = grenadeVel
				
				grenadeCount--	
				grenadeVel = 0
				grenadePredict = 0
			} else {
				grenadeVel = 0	
				grenadePredict = 0
			}
		}
		
	// DASH	
	
		if _INPUT.dashPressed then {
			audioPlayPitch(sfxDash, 2, 0.1)
			
			if dx != 0 or dy != 0 then {
				dashDir = darctan2(-dy, dx)
			} else {
				dashDir = round(dir / 45) * 45
			}
			
			dashTimer = dashTimerMax
			isDashing = true
		}
	} else {
		ds = smoothstep(dashTimer/dashTimerMax)
		dashVel = lerp(dashMinVel, dashMaxVel, ds) * computeSpeedMult() * global.timeWarp
		
		image_xscale = lerp(1,1.2,ds)
		image_yscale = lerp(1,0.9,ds)
		
		moveDash(lengthdir_x(dashVel, dashDir), lengthdir_y(dashVel, dashDir))
		
		dashTimer -= global.timeWarp
		if dashTimer <= 0 then {
			isDashing = false	
		}
	}
	

	
	if bulletCooldown > 0 then {
		bulletCooldown -= global.timeWarp	
	}
	
	x = clamp(x,6,room_width-6)
	y = clamp(y,6,room_height-6)

	if hp <= 0 then {
		isDead = true
		
		instance_create_depth(x,y,depth,objPlayerCorpse)
		audioPlay(sfxDie, 5)
	}
	
	
	depth = -y
	
	if hurt = hurtMax - 1 then {
		comboDamagePenalty()
	}	
}


