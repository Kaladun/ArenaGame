global.waveNumber = 0
global.burstNumber = 0

waveBurstMax = 2

block = 16
buffer = block * 1

centerX = room_width / 2 
centerY = room_height / 2

radiusBaseX = 9
radiusBaseY = 6

radiusX = radiusBaseX * block
radiusY = radiusBaseY * block

leftX = (centerX - radiusX)
rightX = (centerX + radiusX)
topY = (centerY - radiusY)
bottomY = (centerY + radiusY)

waveFinished = false
waveStartNew = true
burstStartNew = false

waveFirst = true