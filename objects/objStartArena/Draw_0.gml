draw_self()

if contact then {
	draw_set_color(c_white)
	draw_text(x,y,"3/7/5/9/13")
	draw_text(x,y+12,"SHOOT TO START")
	
	if _INPUT.shootPrimaryPressed then {
		room_goto(roomArena)	
	}
}

contact = false