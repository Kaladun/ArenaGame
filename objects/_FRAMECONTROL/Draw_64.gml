draw_set_color(c_aqua)
draw_text(40,200,global.timeWarp)
draw_text(40,220,active)
draw_text(40,240,t)

/*global.timeWarp += (mouse_wheel_up() - mouse_wheel_down()) * 0.2
global.timeWarp = clamp(global.timeWarp, 0.2, 1.6)
*/
deltaTW = global.timeWarp - oldTW
oldTW = global.timeWarp

if audio_exists(global.activeMusic) and deltaTW != 0 then {
	audio_sound_pitch(global.activeMusic, global.timeWarp)
}
