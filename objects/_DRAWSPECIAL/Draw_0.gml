if not surface_exists(damageSurface) then {
	damageSurface = surface_create(room_width, room_height)
}	

surface_set_target(damageSurface)
with(objDebris) {
	if speed <= 0 then {
		draw_self()
		instance_destroy()
	}
}	
surface_reset_target()

depth = 2000
draw_surface(damageSurface,0,0)