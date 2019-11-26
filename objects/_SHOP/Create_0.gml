heartType = choose(-1,-1,irandom_range(0,4))

if heartType = -1 then {
	heartCost = floor(4 + global.waveNumber)
} else {
	heartCost = floor(1 + global.waveNumber/3)	
}

trades = 0

canHealTrade = true

repeat(3) {
	generateTrade(trades)
	canTrade[trades] = true
	
	if trade[trades, shop.inputA] = -1 and trade[trades, shop.quantA] > global.money then {
		canTrade[trades] = false	
	}
	
	trades++
}

gx = display_get_gui_width() / global.cameraScale / 2
gy = display_get_gui_height() / global.cameraScale * 0.4 

gw = 80
ghu = -10
ghd = 22

skipFirstFrame = true