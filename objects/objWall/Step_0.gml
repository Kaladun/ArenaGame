if update then {
	topFrame = -1
	wallFrame = -1

	cornerFrame[0] = false
	cornerFrame[1] = false
	cornerFrame[2] = false
	cornerFrame[3] = false


	var xx = x + 8
	var yy = y + 8
	
// DETERMINE BASE FRAME
	topFrame = 15
	var east = false
	var north = false
	var west = false
	var south = false
		
	if collision_point(xx + 16, yy, objWall,0,0) or boundary[0] then {
		topFrame -= 1
		east = true
	}
	if collision_point(xx, yy - 16, objWall,0,0) or boundary[1] then {
		topFrame -= 2
		north = true
	}
	if collision_point(xx - 16, yy, objWall,0,0) or boundary[2] then {
		topFrame -= 4
		west = true	
	}
	if collision_point(xx, yy + 16, objWall,0,0) or boundary[3] then {
		topFrame -= 8
		south = true	
	}
	
// ADD CORNER DETAILS				
	if east and not boundary[0] and north and not boundary[1] and not collision_point(xx + 16, yy - 16, objWall,0,0) then {
		cornerFrame[0] = true
		cornerFrames = true
	}
	if north and not boundary[1] and west and not boundary[2] and not collision_point(xx - 16, yy - 16, objWall,0,0) then {
		cornerFrame[1] = true
		cornerFrames = true
	}				
	if west and not boundary[2] and south and not boundary[3] and not collision_point(xx - 16, yy + 16, objWall,0,0) then {
		cornerFrame[2] = true
		cornerFrames = true
	}				
	if south and not boundary[3] and east and not boundary[0] and not collision_point(xx + 16, yy + 16, objWall,0,0) then {
		cornerFrame[3] = true
		cornerFrames = true
	}

// WALL IF BOTTOM IS EMPTY
	if not south then {
		wallFrame = 0
					
		if not east then {wallFrame += 2}
		if not west then {wallFrame += 1}			
	}
	
	update = false
}

if hp <= 0 then {
	wallUpdateNeighbors()
	instance_destroy()	
}