draw_set_color(c_aqua)
draw_text(40,200,global.timeWarp)

oldTW = global.timeWarp
global.timeWarp += (mouse_wheel_up() - mouse_wheel_down()) * 0.1
global.timeWarp = clamp(global.timeWarp, 0.2, 2)

deltaTW = global.timeWarp - oldTW

if audio_exists(global.activeMusic) and deltaTW != 0 then {
	audio_sound_pitch(global.activeMusic, global.timeWarp)
}