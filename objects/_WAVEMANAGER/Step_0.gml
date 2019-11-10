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
	
	/*with(objWall) {
		if feature then {
			instance_destroy()	
		}
	}*/	
	
	radiusX = (radiusBaseX + floor(sqrt(2*global.waveNumber))) * block
	radiusY = (radiusBaseY + floor(sqrt(2*global.waveNumber))) * block
	
	leftX = (centerX - radiusX)
	rightX = (centerX + radiusX)
	topY = (centerY - radiusY)
	bottomY = (centerY + radiusY)
	
	leftWX = leftX - 3 * block
	rightWX = rightX + 3 * block
	topWY = topY - 3 * block
	bottomWY = bottomY + 3 * block
	
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
	
	var specialFeature = "none"
	if global.waveNumber > 4 then {
		var specialFeature = choose("none", "corners", "center", "pillars", "bulkycorners", "bulkycenter", "walls")
	} else if global.waveNumber > 1{
		var specialFeature = choose("none", "corners", "center", "pillars")
	}	
	
	if specialFeature = "corners" then {
		wallSquare(leftX + block, topY + block, 2, 2)
		wallSquare(leftX + block, bottomY - 2 * block, 2, 2)
		wallSquare(rightX - 2 * block, topY + block, 2, 2)
		wallSquare(rightX - 2 * block, bottomY - 2 * block, 2, 2)
	} else if specialFeature = "center" then {
		wallSquare(centerX - 1 * block, centerY - 1 * block, 3, 3)
	} else if specialFeature = "pillars" then {
		wallSquare(centerX - 3 * block, centerY - 3 * block, 2, 2)
		wallSquare(centerX - 3 * block, centerY + 2 * block, 2, 2)
		wallSquare(centerX + 2 * block, centerY - 3 * block, 2, 2)
		wallSquare(centerX + 2 * block, centerY + 2 * block, 2, 2)
	} else if specialFeature = "bulkycorners" then {
		wallSquare(leftX + block, topY + block, 3, 2)
		wallSquare(leftX + block, topY + 3 * block, 2, 1)
		wallSquare(leftX + block, bottomY - 2 * block, 3, 2)
		wallSquare(leftX + block, bottomY - 3 * block, 2, 1)
		wallSquare(rightX - 3 * block, topY + block, 3, 2)
		wallSquare(rightX - 2 * block, topY + 3 * block, 2, 1)
		wallSquare(rightX - 3 * block, bottomY - 2 * block, 3, 2)
		wallSquare(rightX - 2 * block, bottomY - 3 * block, 2, 1)
	} else if specialFeature = "bulkycenter" then {
		wallSquare(centerX - 2 * block, centerY - 1 * block, 5, 3)
		wallSquare(centerX - 1 * block, centerY - 2 * block, 3, 1)
		wallSquare(centerX - 1 * block, centerY + 2 * block, 3, 1)
	} else if specialFeature = "walls" then {
		wallSquare(centerX - 3 * block, centerY - 3 * block, 7, 1)
		wallSquare(centerX - 3 * block, centerY + 3 * block, 7, 1)
	}

	with(objWall) {
		update = true	
	}

	_CAMERA.cameraUpdateBounds = true	
	
	waveFirst = false
	waveStartNew = false
	waveFinished = false
}