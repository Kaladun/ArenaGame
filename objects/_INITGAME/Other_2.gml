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
}

n = 0

global.upgrade[n, stat.name] = "Bullet Speed"
global.upgrade[n, stat.cur] = bulletSpeed
global.upgrade[n, stat.inc] = bulletSpeedInc
global.upgrade[n, stat.dec] = bulletSpeedDec
global.upgrade[n, stat.predict] = formulaBulletSpeedMult
n++

global.upgrade[n, stat.name] = "Bullet Size"
global.upgrade[n, stat.cur] = thiccness
global.upgrade[n, stat.inc] = thiccnessInc
global.upgrade[n, stat.dec] = thiccnessDec
global.upgrade[n, stat.predict] = formulaThiccness
n++

global.upgrade[n, stat.name] = "Gun Cooldown"
global.upgrade[n, stat.cur] = cooldown
global.upgrade[n, stat.inc] = cooldownInc
global.upgrade[n, stat.dec] = cooldownDec
global.upgrade[n, stat.predict] = formulaCooldownMult
n++

global.upgrade[n, stat.name] = "Bullet Variance"
global.upgrade[n, stat.cur] = variance
global.upgrade[n, stat.inc] = varianceInc
global.upgrade[n, stat.dec] = varianceDec
global.upgrade[n, stat.predict] = formulaVarianceMult
n++

global.upgrade[n, stat.name] = "Shotgun Odds"
global.upgrade[n, stat.cur] = shotgun
global.upgrade[n, stat.inc] = shotgunInc
global.upgrade[n, stat.dec] = shotgunDec
global.upgrade[n, stat.predict] = formulaShotgunOdds
n++

global.upgrade[n, stat.name] = "Vampire Odds"
global.upgrade[n, stat.cur] = vampireOdds
global.upgrade[n, stat.inc] = vampireOddsInc
global.upgrade[n, stat.dec] = vampireOddsDec
global.upgrade[n, stat.predict] = formulaVampireOdds
n++

global.upgradeTotal = n


// START

room_goto(roomArena)

