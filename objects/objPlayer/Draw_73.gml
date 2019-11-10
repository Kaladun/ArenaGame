if hurt > 0 then {
	r = hurt / hurtMax	
	room_speed = lerp(60,20,sqrt(sqrt(r)))
	draw_sprite_ext(sprVignette, 0, _CAMERA.cameraX, _CAMERA.cameraY, sprite_get_width(sprVignette)/global.gameWidth, sprite_get_height(sprVignette)/global.gameHeight, 0, c_red, smoothstep(r/2))
}