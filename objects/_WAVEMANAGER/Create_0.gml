global.waveNumber = 0
global.burstNumber = 0

instance_create_depth(0,0,0,_ENEMYSPAWNER)
waveValuesSet()

waveBurstMax = 3

block = 16
buffer = block * 1

centerX = room_width / 2 
centerY = room_height / 2

radiusBaseX = 8
radiusBaseY = 6

radiusX = radiusBaseX
radiusY = radiusBaseY

waveFinished = false
waveStartNew = true
waveFirst = true

