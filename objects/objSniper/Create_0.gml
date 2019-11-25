event_inherited()

hp = 3 + enemyHPScale(0.6, 2)


// BEHAVIOR CONTROL

state = 0
stateTimerMin = 90
stateTimerMax = 120
stateTimer = irandom_range(stateTimerMin, stateTimerMax)
fireTimer = 30

vel = 0.8 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

scoreBase = 1

drawGunOffsetX = 3
drawGunOffsetY = -6
gunSprite = sprEnemySniperRifle

gunLeadT = 0
gunLastT = 10

targetX = -1
targetY = -1