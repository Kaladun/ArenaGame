if hurt > 0 or isDead then {
	r = hurt / hurtMax	
	room_speed = lerp(60,30,sqrt(sqrt(r)))
	draw_sprite_ext(sprVignette, 0, _CAMERA.cameraX, _CAMERA.cameraY, _CAMERA.cameraW / 384, _CAMERA.cameraH / 256, 0, c_red, smoothstep(r/2))
}