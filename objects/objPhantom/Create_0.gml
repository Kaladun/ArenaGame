event_inherited()

hp = 3
hurtSFX = sfxEnemyHurt
dieSFX = sfxDie

bulletImmune = true
grenadeImmune = true
projectilePass = true
canSeek = false

// BEHAVIOR CONTROL


fireTimer = irandom_range(105,150)
fireTimerMax = 8

burstCount = 0
burstCountMax = 3
burstTimerBonus = 240

vel = 0.55 * computeSpeedMult()
dir = irandom_range(0,3) * 90
image_angle = dir

t = 0 
image_alpha = 0.5
c_base = merge_color(c_white, c_purple, 0.5)

scoreBase = 3