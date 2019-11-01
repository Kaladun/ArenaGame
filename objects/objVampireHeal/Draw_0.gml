s = 1 - t/tMax
s = s*s

a = point_direction(x,y,objPlayer.x,objPlayer.y)
xx = x + (objPlayer.x-x) * s
yy = y + (objPlayer.y-y) * s 

aa += da
draw_sprite_ext(sprHeartPickup, 0, xx, yy, 1+s/2, 1-s/2, a + aa, -1, 1)

t--
if t <= 0 then {
	instance_destroy()	
}