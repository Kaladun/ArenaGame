randomize()

// BASIC UPGRADES
global.bulletVarianceBase = 0
global.bulletCooldownBase = 0
global.bulletShotgunBase = 0
global.bulletThiccBase = 0
global.bulletSpeedBase = 0

// ELITE UPGRADES
global.vampireBase = 0
global.flameTrail = 0


// UNUSED UPGRADES
global.bulletPiercingBase = 0
global.bulletHeatBase = 0
global.bulletBackblastBase = 0

// MASTER UPGRADES
global.bulletHomingBase = 0
global.bulletBounce = 0


global.upgradeCount = 0
global.totalScore = 0
global.money = 0

global.comboLevel = 1
global.comboLevelMax = 4
global.comboTimer = 0
global.comboTimerMax = 4 * room_speed

global.comboGoal = 2
global.comboKills = 0

global.fntPixel5 = font_add_sprite(sprPixelFont5, ord(" "), 1, 1)
draw_set_font(global.fntPixel5)

drawX = floor(global.gameWidth - 50)

comboM = global.gameWidth / 2
comboX = comboM - 40
comboW = 80
comboY = 12
comboH = 10

debug = false
debugX = floor(global.gameWidth - 80)
debugY = 50