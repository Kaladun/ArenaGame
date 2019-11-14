var n = argument0

// CLEAR
trade[n, shop.inputA] = -1
trade[n, shop.quantA] = -1
trade[n, shop.inputB] = -1
trade[n, shop.quantB] = -1
trade[n, shop.output] = -1
trade[n, shop.quantO] = -1

// INPUTS
var t = irandom_range(0, global.upgradeTotal - 1)
var w = round( (irandom_range(5,8) + global.waveNumber) / global.upgrade[t, stat.worth])

trade[n, shop.output] = t
trade[n, shop.quantO] = w

if random(1) > 0.5 then {
	var ti = irandom_range(0,4)	
	var wi = round(w / global.upgrade[ti, stat.worth] * random_range(0.75,1.15))
} else {
	var ti = -1
	var wi = round(w * global.moneyPerWorth * random_range(0.9,1.3))
}

trade[n, shop.inputA] = ti
trade[n, shop.quantA] = wi
