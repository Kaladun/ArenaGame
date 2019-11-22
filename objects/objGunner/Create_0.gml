event_inherited()

hp = 8 + enemyHPScale(1,3)


// BEHAVIOR CONTROL

state = 0
stateTimerMin = 60
stateTimerMax = 180
stateTimer = irandom_range(stateTimerMin, stateTimerMax)

fireTimer = 15

gunTimer = 135
gunTimerMax = 10
gunTimerBonus = 360

burstCounter = 0
burstCounterMax = 9

targetX = x 
targetY = y + 500

vel = 0.5 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

scoreBase = 1


gunSprite = sprEnemyHeavyGun
drawGunOffsetX = 3
drawGunOffsetY = -8