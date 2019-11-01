var dirShuffle = ds_list_create()

ds_list_add(dirShuffle, 0)
ds_list_add(dirShuffle, 1)
ds_list_add(dirShuffle, 2)
ds_list_add(dirShuffle, 3)

var dirP = point_direction(x,y,objPlayer.x,objPlayer.y)
dirP = (dirP + 45) mod 360
dirP = floor(dirP/90)
ds_list_add(dirShuffle, dirP)

if not place_meeting(x + 32, y, objWall) then {ds_list_add(dirShuffle, 0)}
if not place_meeting(x, y - 32, objWall) then {ds_list_add(dirShuffle, 1)}
if not place_meeting(x - 32, y, objWall) then {ds_list_add(dirShuffle, 2)}
if not place_meeting(x, y  +32, objWall) then {ds_list_add(dirShuffle, 3)}

var ret = irandom_range(0,3)
if ds_list_size(dirShuffle) > 0 then {
	ds_list_shuffle(dirShuffle)
	var ret = ds_list_find_value(dirShuffle, 0)
	ds_list_destroy(dirShuffle)
}

return ret * 90