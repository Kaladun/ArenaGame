event_inherited()

hp = 20 + enemyHPScale(3,4)


// BEHAVIOR

hasExploded = false

velDefault = 1.1 * computeSpeedMult()
velChase = 1.25 * velDefault
vel = velDefault

chaseRange = 112
chaseDelay = 90

dir = 90 * irandom_range(0,3)
t = 0

scoreBase = 1

gunSprite = -1