var n = argument0

// CLEAR
trade[n, shop.inputA] = -1
trade[n, shop.quantA] = -1
trade[n, shop.inputB] = -1
trade[n, shop.quantB] = -1
trade[n, shop.output] = -1
trade[n, shop.quantO] = -1

// INPUTS

if random(1) > 0.5 then {
	var wmax = 2 + 3*global.waveNumber

	do {
		var ti = irandom_range(0,4)	
		var wi = max(1, round(irandom_range(wmax-3, wmax) * random_range(0.75,1.15) * global.upgrade[ti, stat.worth]))
		var wcap = script_execute(global.upgrade[ti, stat.cur])
		wmax = max(1, wmax)
	} until (wi <= wcap)
	
	do {
		var t = irandom_range(0, global.upgradeTotal - 1)
		if wi < 4 then { 
			t = irandom_range(0,4)
		}
		
		var w = max(floor(wi / global.upgrade[t, stat.worth]), 1)
	} until (t != ti)
	
} else {
	var ti = -1
	var wi = (4 + 2 * global.waveNumber) * random_range(0.9,1.3)
	
	var t = irandom_range(0, global.upgradeTotal - 1)
	if wi < 4 then { 
		t = irandom_range(0,4)
	}
	
	var w = max(floor(wi / global.upgrade[t, stat.worth]), 1)	
	wi = round(wi * global.moneyPerWorth)
}


trade[n, shop.output] = t
trade[n, shop.quantO] = w

trade[n, shop.inputA] = ti
trade[n, shop.quantA] = wi