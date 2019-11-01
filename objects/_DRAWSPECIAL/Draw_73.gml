// GLOWING BULLETS

if not surface_exists(bulletSurface) then {
	bulletSurface = surface_create(room_width, room_height)
}	

surface_set_target(bulletSurface)
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,0)

gpu_set_blendmode(bm_add)

with(objFlash) {
	draw_self()	
}

with(objPlayerBullet) {
	draw_self()
}	

with(objEnemyBullet) {
	draw_self()
}	

with(objEnemyPellet) {
	draw_self()
}	

surface_reset_target()
draw_surface(bulletSurface,0,0)
gpu_set_blendmode(bm_normal)

// ENEMY TRACKER

with(genericEnemy) { 
	if not onCamera(x,y,8) then {
		var aa = point_direction(x,y,_CAMERA.cameraX + _CAMERA.cameraW2,_CAMERA.cameraY + _CAMERA.cameraH2)
		var ax = x
		var ay = y
		var dx = lengthdir_x(4,aa)
		var dy = lengthdir_y(4,aa)
	
		while(not onCamera(ax,ay,-6)) {
			ax += dx
			ay += dy
		}
	
		if ax < _CAMERA.cameraX + 12 then {
			ax = _CAMERA.cameraX + 6	
		} else if ax > _CAMERA.cameraX + _CAMERA.cameraW - 12 then {
			ax = _CAMERA.cameraX + _CAMERA.cameraW - 6	
		}
	
		if ay < _CAMERA.cameraY + 12 then {
			ay = _CAMERA.cameraY + 6	
		} else if ay > _CAMERA.cameraY + _CAMERA.cameraH - 12 then {
			ay = _CAMERA.cameraY + _CAMERA.cameraH - 6	
		}
	
		var arrowColor = merge_color(c_red, c_white, attackWarning)
		draw_sprite_ext(sprEnemyArrow,0,ax,ay,1,1,aa+180,arrowColor,1)
	}
}