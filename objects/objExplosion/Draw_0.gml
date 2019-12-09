draw_self()

if timer <= 32 and not scorch then {
	scorch = true
	if surface_exists(_DRAWSPECIAL.damageSurface) then {
		surface_set_target(_DRAWSPECIAL.damageSurface)
		draw_sprite_ext(sprScorch, 0, other.x + random_range(-3,3), other.y + random_range(-3,3), other.image_xscale, other.image_yscale, random_range(0,360), -1, random_range(0.7, 0.9))
		surface_reset_target()
	}
}