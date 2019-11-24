randomize()

audio_play_sound(msxRhinoceros, 1, 1)

// DISPLAY SHIT

global.fullscreen = true
global.cameraScale = 4

if not global.fullscreen then {

	window_set_fullscreen(false)

	global.gameWidth = 384
	global.gameHeight = 256
	global.windowWidth = global.gameWidth * global.cameraScale
	global.windowHeight = global.gameHeight * global.cameraScale

	window_set_size(global.windowWidth, global.windowHeight)
	

} else {

	window_set_fullscreen(true)

	global.windowWidth = display_get_width()
	global.windowHeight = display_get_height()
	global.gameWidth = ceil(global.windowWidth / global.cameraScale)
	global.gameHeight = ceil(global.windowHeight / global.cameraScale)
}

surface_resize(application_surface, global.gameWidth, global.gameHeight)
display_set_gui_maximize(global.cameraScale, global.cameraScale, 0, 0)


// ENUMS

enum shop {
	inputA,
	quantA,
	inputB,
	quantB,
	output,
	quantO,
}

enum stat {
	name,
	cur,
	inc,
	dec,
	predict,
	worth,
}

n = 0

global.upgrade[n, stat.name] = "Bullet Speed"	//0
global.upgrade[n, stat.cur] = bulletSpeed
global.upgrade[n, stat.inc] = bulletSpeedInc
global.upgrade[n, stat.dec] = bulletSpeedDec
global.upgrade[n, stat.predict] = formulaBulletSpeedMult
global.upgrade[n, stat.worth] = 1
n++

global.upgrade[n, stat.name] = "Bullet Size"	// 1
global.upgrade[n, stat.cur] = thiccness
global.upgrade[n, stat.inc] = thiccnessInc
global.upgrade[n, stat.dec] = thiccnessDec
global.upgrade[n, stat.predict] = formulaThiccness
global.upgrade[n, stat.worth] = 1
n++

global.upgrade[n, stat.name] = "Fire Rate"	// 2
global.upgrade[n, stat.cur] = cooldown
global.upgrade[n, stat.inc] = cooldownInc
global.upgrade[n, stat.dec] = cooldownDec
global.upgrade[n, stat.predict] = formulaCooldownMult
global.upgrade[n, stat.worth] = 1
n++

global.upgrade[n, stat.name] = "Bullet Variance"	// 3
global.upgrade[n, stat.cur] = variance
global.upgrade[n, stat.inc] = varianceInc
global.upgrade[n, stat.dec] = varianceDec
global.upgrade[n, stat.predict] = formulaVarianceMult
global.upgrade[n, stat.worth] = 1
n++

global.upgrade[n, stat.name] = "Shotgun Odds"	// 4
global.upgrade[n, stat.cur] = shotgun
global.upgrade[n, stat.inc] = shotgunInc
global.upgrade[n, stat.dec] = shotgunDec
global.upgrade[n, stat.predict] = formulaShotgunOdds
global.upgrade[n, stat.worth] = 1
n++

global.upgrade[n, stat.name] = "Vampire Odds"	// 5
global.upgrade[n, stat.cur] = vampireOdds
global.upgrade[n, stat.inc] = vampireOddsInc
global.upgrade[n, stat.dec] = vampireOddsDec
global.upgrade[n, stat.predict] = formulaVampireOdds
global.upgrade[n, stat.worth] = 5
n++

global.upgradeTotal = n
global.moneyPerWorth = 3


// START

room_goto(roomArena)

