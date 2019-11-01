if argument0 <= 20 then {
	return 1 + argument0 * 0.05
} else {
	var asp = argument0 - 20
	return 3 - power(0.952, asp)
}