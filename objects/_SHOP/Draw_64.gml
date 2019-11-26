var clicked = mouse_check_button_pressed(mb_left) and not skipFirstFrame
gmx = guiMouseX()
gmy = guiMouseY()


if canHealTrade and heartType = -1 then {
	if global.money < heartCost	then {canHealTrade = false}
}

for(var i = 0; i < trades; i++) {
	if canTrade[i] and trade[i, shop.inputA] = -1 then {
		if global.money < trade[i, shop.quantA] then {canTrade[i] = false}	
	}
}

displayTradeBox(canHealTrade, gx - gw, gy - 40 + ghu, gx + gw, gy - 40 + ghd) 
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
	displayTradeBox(canTrade[i], gx - gw, gy + i * 40 + ghu, gx + gw, gy + i * 40 + ghd) 
	displayTrade(i, gx, gy + 40 * i)
	if clicked and canTrade[i] and point_in_rectangle(gmx, gmy, gx - gw, gy + i * 40 + ghu, gx + gw, gy + i * 40 + ghd) then {
		executeTrade(i)
		canTrade[i] = false
	}	
	
	if canTrade[i] then {draw_set_color(c_lime)}
	else {draw_set_color(c_red)}
	draw_rectangle(gx - gw, gy + i * 40 + ghu, gx + gw, gy + i * 40 + ghd, true)
}


endMouseOver = point_in_rectangle(gmx, gmy, gx-50, 220, gx+50, 240)
displayTradeBox(endMouseOver, gx-50, 220, gx+50, 240)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(gx, 225, "CONTINUE THE SLAUGHTER")
if clicked and endMouseOver then {
	startNewWave()
	with(_WAVETRANSITION) {
		instance_destroy()	
	}
	instance_destroy()
}


draw_sprite(sprCursor,0,gmx,gmy)
skipFirstFrame = false