event_inherited()

hp = 80 + enemyHPScale(7,3)
bulletImmune = true

hurtSFX = sfxEnemyHurt
dieSFX = sfxDie

// AI CONTROL

state = 0
stateTimerMin = 60
stateTimerMax = 90
stateTimer = irandom_range(stateTimerMin, stateTimerMax)
fireTimer = 20

vel = 0.4 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

hasArmor = true

image_speed = 0
scoreBase = 3

drawGunOffsetX = 3
drawGunOffsetY = -7
gunSprite = sprArmoredShotgun