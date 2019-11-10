event_inherited()

hp = 3


// BEHAVIOR CONTROL

state = 0
stateTimerMin = 90
stateTimerMax = 120
stateTimer = irandom_range(stateTimerMin, stateTimerMax)
fireTimer = 20

vel = 0.8 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

scoreBase = 1

drawGunOffsetX = 3
drawGunOffsetY = -6