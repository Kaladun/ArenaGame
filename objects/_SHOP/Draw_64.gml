var clicked = mouse_check_button_pressed(mb_left)
gmx = guiMouseX()
gmy = guiMouseY()

draw_sprite(sprCursor,0,gmx,gmy)

displayHealTrade(heartType, heartCost, gx, gy - 40)
if clicked and canHealTrade and point_in_rectangle(gmx, gmy, gx - gw, gy - 40 + ghu, gx + gw, gy - 40 + ghd) then {
	executeHealTrade(heartType, heartCost)
}	

if objPlayer.hp >= objPlayer.hpMax then {
	canHealTrade = false	
}

if canHealTrade then {draw_set_color(c_lime)}
else {draw_set_color(c_red)}
draw_rectangle(gx - gw, gy - 40 + ghu, gx + gw, gy - 40 + ghd, true)
	

for(var i = 0; i < trades; i++) {
	displayTrade(i, gx, gy + 40 * i)
	if clicked and canTrade[i] and point_in_rectangle(gmx, gmy, gx - gw, gy + i * 40 + ghu, gx + gw, gy + i * 40 + ghd) then {
		executeTrade(i)
		canTrade[i] = false
	}	
	
	if canTrade[i] then {draw_set_color(c_lime)}
	else {draw_set_color(c_red)}
	draw_rectangle(gx - gw, gy + i * 40 + ghu, gx + gw, gy + i * 40 + ghd, true)
}

draw_set_color(c_white)