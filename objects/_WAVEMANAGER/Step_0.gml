if _ENEMYSPAWNER.totalSpawn = 0 and not waveFinished and not waveStartNew then {
	if instance_number(genericEnemy) = 0 and instance_number(objSpawner) = 0 then {	
		if global.burstNumber + 1 >= waveBurstMax then {
			global.burstNumber = -1
			waveFinished = true
			instance_create_depth(0,0,0, _WAVETRANSITION)
		} else {
			global.burstNumber++
			waveValuesSet()	
		}
	}
}

if waveStartNew then {
	
	radiusX = (radiusBaseX + floor(sqrt(2*global.waveNumber))) * block
	radiusY = (radiusBaseY + floor(sqrt(2*global.waveNumber))) * block
	
	leftX = (centerX - radiusX)
	rightX = (centerX + radiusX)
	topY = (centerY - radiusY)
	bottomY = (centerY + radiusY)
	
	leftWX = leftX - 2 * block
	rightWX = rightX + 2 * block
	topWY = topY - 2 * block
	bottomWY = bottomY + 2 * block
	
	iMin = leftWX - buffer
	iMax = rightWX + buffer
	jMin = topWY - buffer
	jMax = bottomWY + buffer
	
	for(var i = iMin; i <= iMax; i += block) {
		for(var j = jMin; j <= jMax; j += block) {
			
			if i > leftX and i < rightX and j > topY and j < bottomY then {
		// CENTER CLEAR AREA
				var w = collision_point(i+8,j+8,objWall,0,0)
				if instance_exists(w) then {
					with(w) {instance_destroy()}	
				}
			} else if i >= leftWX and i <= rightWX and j >= topWY and j <= bottomWY then {
		// WOOD AREA			
				var w = collision_point(i+8,j+8,objWallUnbreakable,0,0)
				var spawn = false
				
				if instance_exists(w) then {
					with(w) {instance_destroy()}
					spawn = true
				}
				
				if waveFirst then {
					spawn = true	
				}
					
				if spawn then {
					instance_create_depth(i,j,-j, objWall)	
				}
				
			} else {
		// SOLID AREA
				var w = collision_point(i+8,j+8,objWall,0,0)
				
				if not instance_exists(w) then {
					var ww = instance_create_depth(i,j,-j, objWallUnbreakable)
					if i = iMax then {
						ww.boundary[0] = true
					}
					
					if i = iMin then {
						ww.boundary[2] = true
					}
					
					if j = jMin then {
						ww.boundary[1] = true
					}
					
					if j = jMax then {
						ww.boundary[3] = true
					}
				} 				
			} 	
		}
	}
	
	/*
	wallLeft = instance_create_depth(-64,-64,0,objWall)
	wallLeft.image_xscale = (64 + leftX)/block
	wallLeft.image_yscale = (64 + room_height)/block
	
	wallRight = instance_create_depth(rightX,-64,0,objWall)
	wallRight.image_xscale = (room_width - rightX + 64)/block
	wallRight.image_yscale = (64 + room_height)/block
	
	wallTop = instance_create_depth(0,-64,0,objWall)
	wallTop.image_xscale = (room_width)/block
	wallTop.image_yscale = (64 + topY)/block
	
	wallBottom = instance_create_depth(0,bottomY,0,objWall)
	wallBottom.image_xscale = (room_width)/block
	wallBottom.image_yscale = (64 + room_height - bottomY)/block
	*/
	
/*	specialFeature = choose("none", "none", "corners", "center", "pillars")
	
	if specialFeature = "corners" then {
		wallC1 = instance_create_depth(leftX,topY,0,objWall)
		wallC2 = instance_create_depth(leftX,bottomY - block,0,objWall)
		wallC3 = instance_create_depth(rightX - block,topY,0,objWall)
		wallC4 = instance_create_depth(rightX - block, bottomY - block,0,objWall)
	} else if specialFeature = "center" then {
		wallC1 = instance_create_depth(centerX - block, centerY - block ,0,objWall)
		wallC2 = instance_create_depth(centerX - block, centerY ,0,objWall)
		wallC3 = instance_create_depth(centerX, centerY - block ,0,objWall)
		wallC4 = instance_create_depth(centerX, centerY ,0,objWall)
	} else if specialFeature = "pillars" then {
		wallC1 = instance_create_depth(centerX - 2*block, centerY - 2*block ,0,objWall)
		wallC2 = instance_create_depth(centerX - 2*block, centerY + block,0,objWall)
		wallC3 = instance_create_depth(centerX + block, centerY - 2*block,0,objWall)
		wallC4 = instance_create_depth(centerX + block, centerY + block,0,objWall)
	}*/

	with(objWall) {
		update = true	
	}

	_CAMERA.cameraUpdateBounds = true	
	
	waveFirst = false
	waveStartNew = false
	waveFinished = false
}