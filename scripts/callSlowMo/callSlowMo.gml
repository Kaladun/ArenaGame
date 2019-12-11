if argument3 > _FRAMECONTROL.priority or not _FRAMECONTROL.active then {
	_FRAMECONTROL.active = true

	_FRAMECONTROL.decayTime = ceil(argument0 * room_speed)
	_FRAMECONTROL.sustainTime = ceil(argument1 * room_speed)
	_FRAMECONTROL.restoreTime = ceil(argument2 * room_speed)
	_FRAMECONTROL.priority = argument3 
}