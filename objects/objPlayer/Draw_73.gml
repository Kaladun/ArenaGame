if hurt > 0 or isDead then {
	r = sqrt(sqrt(hurt / hurtMax))	
	draw_sprite_ext(sprVignette, 0, _CAMERA.cameraX, _CAMERA.cameraY, _CAMERA.cameraW / 384, _CAMERA.cameraH / 256, 0, c_red, r/2)
}