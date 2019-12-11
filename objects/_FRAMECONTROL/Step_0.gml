if active then {
	v = 1
	r = 0
	
	if t < decayTime then {
		r = (decayTime - t) / decayTime
		r = r * r
		v = lerp(minSpeed, defaultSpeed, r)
	} else if t < decayTime + sustainTime then {
		v = minSpeed	
	} else if t < decayTime + sustainTime + restoreTime then {
		var tt = (t - decayTime - sustainTime) / restoreTime
		r = smoothstep(tt)
		v = lerp(minSpeed, defaultSpeed, r)
	} else {
		active = false
		v = 1
	}
	
	global.timeWarp = v
	
	t++
} else {
	t = 0	
}