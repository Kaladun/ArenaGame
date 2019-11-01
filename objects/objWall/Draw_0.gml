if topFrame >= 0 then {
	draw_sprite(tilesTop, topFrame, x, y - 8)	
}

if wallFrame >= 0 then {
	draw_sprite(tilesWall, wallFrame, x, y + 8)	 
}

if cornerFrames then {
	for(var i = 0; i <= 3; i++) {
		if cornerFrame[i] != 0 then {
			draw_sprite(tilesTop, 16+i, x, y - 8)	
		}
	}
}