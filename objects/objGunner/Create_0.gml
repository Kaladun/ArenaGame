event_inherited()

hp = 7


// BEHAVIOR CONTROL

state = 0
stateTimerMin = 90
stateTimerMax = 120
stateTimer = irandom_range(stateTimerMin, stateTimerMax)

fireTimer = 15

gunTimer = 135
gunTimerMax = 45
gunTimerLock = 40

targetX = x 
targetY = y + 500

vel = 0.8 * computeSpeedMult()
dir = 90 * irandom_range(0,3)

scoreBase = 1