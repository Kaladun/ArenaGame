event_inherited()

hp = 110 + enemyHPScale(12,3)


// BEHAVIOR CONTROL

state = 0
stateTimerMin = 120
stateTimerMax = 180
stateTimer = irandom_range(stateTimerMin, stateTimerMax)
fireTimer = 20

grenadeImmune = true

vel = 0.8 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

scoreBase = 1

drawGunOffsetX = 4
drawGunOffsetY = -7
gunSprite = sprEnemyGrenadeLauncher