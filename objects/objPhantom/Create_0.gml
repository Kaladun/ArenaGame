event_inherited()

hp = 30
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

t = 0 
scoreBase = 3

gunDir = 0
gunSprite = sprPhantomGun
drawGunOffsetX = 3
drawGunOffsetY = -6