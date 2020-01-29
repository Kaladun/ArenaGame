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
		computeGunValues()
		
	// PRIMARY SHOT

		if (primaryCooldown <= 0 and _INPUT.shootPrimary) or (primaryQueue and primaryCooldown <= ceil(primaryCooldownSpam * computeCooldownMult() )) {
			primaryCooldown += primaryCooldownMax / computeCooldownMult()
			primaryQueue = false
			
			playerFirePrimary(dir)
			
			if random(1) < computeBackblastOdds() then {
				playerFirePrimary(dir + 180)	
			}
			
			audioPlayPitch(sfxPlayerShoot, 1, 0.8, 0.1)
			screenShake(3)
			
			bulletKickX += lengthdir_x(primaryKick, dir)
			bulletKickY += lengthdir_y(primaryKick, dir)
			
		} else if _INPUT.shootPrimaryPressed {
			primaryQueue = true
		}

	// SECONDARY SHOT

		if (secondaryCooldown <= 0 and (_INPUT.shootSecondaryPressed or secondaryQueue)) {
			secondaryCooldown += secondaryCooldownMax / computeCooldownMult()
			secondaryQueue = false
			
			playerFireSecondary(dir)

			audioPlayPitch(sfxShotgun, 1, 1, 0.05)
			screenShake(6)
			
			bulletKickX += lengthdir_x(secondaryKick, dir)
			bulletKickY += lengthdir_y(secondaryKick, dir)
			
		} else if _INPUT.shootSecondaryPressed and secondaryCooldown <= secondaryCooldownMax / (2 * computeCooldownMult()) {
			secondaryQueue = true
		}


	// GRENADE
		
		if grenadeCount > 0 then {
			if _INPUT.grenadeDown then {
				grenadeVel = clamp(grenadeVel + grenadeAccel * global.timeWarp, 0, grenadeVelMax)
				grenadePredict = grenadeVtoD(grenadeVel)
		
			} else if _INPUT.grenadeReleased then {		
				var d = dir + random_range(-2,2) + random_range(-2,2)
				fireGrenade(x,y,d,grenadeVel, objGrenade)
				
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
			audioPlayPitch(sfxDash, 2, 1, 0.1)
			
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
	

	
	if primaryCooldown > 0 then {
		primaryCooldown -= global.timeWarp	
	}

	if secondaryCooldown > 0 then {
		secondaryCooldown -= global.timeWarp	
	}

	x = clamp(x,6,room_width-6)
	y = clamp(y,6,room_height-6)

	if hp <= 0 then {
		isDead = true
		
		instance_create_depth(x,y,depth,objPlayerCorpse)
		audioPlay(sfxDie, 5)
	}
	
	depth = -y
}

imageSpeedUpdate()