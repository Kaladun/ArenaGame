if hurt > 0 then {
	r = hurt / hurtMax	
	room_speed = lerp(60,20,sqrt(sqrt(r)))
	draw_sprite_ext(sprVignette, 0, _CAMERA.cameraX, _CAMERA.cameraY, global.trueScaleX/global.cameraScale, global.trueScaleY/global.cameraScale, 0, c_red, smoothstep(r/2))
}