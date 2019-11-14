heartCost = floor(3 + floor(global.waveNumber/2))
heartType = irandom_range(0,3)

trades = 0

repeat(3) {
	generateTrade(trades)
	trades++
}

gx = display_get_gui_width() / global.cameraScale
gy = display_get_gui_height() / global.cameraScale