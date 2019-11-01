draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(-100,-100,500,400,false)
draw_set_alpha(1)

draw_set_color(c_white)

draw_set_halign(fa_center)
t++
var angle = 5*sin(t*0.02)
draw_text_transformed(gx/2, gy/2, "UR DEAD", 4, 4, angle)

draw_text(gx/2, gy*0.7, "SCORE : "+string(global.totalScore))
draw_text(gx/2, gy*0.7+15, "UPGRADES : "+string(global.upgradeCount))


if keyboard_check_pressed(ord("R")) then {
	room_restart()
}