if hurt > 0 then {
	r = hurt / hurtMax	
	room_speed = lerp(60,15,sqrt(r))
	draw_sprite_ext(sprVignette, 0, _CAMERA.cameraX, _CAMERA.cameraY, 1, 1, 0, c_red, smoothstep(r/2))
}