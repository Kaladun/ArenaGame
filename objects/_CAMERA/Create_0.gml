cameraW = global.gameWidth
cameraH = global.gameHeight

cameraW2 = cameraW / 2
cameraH2 = cameraH / 2

cameraTargetX = room_width / 2
cameraTargetY = room_height / 2

cameraX = cameraTargetX - cameraW2
cameraY = cameraTargetY - cameraH2

cameraSpeed = 0.1
cameraLockRad = 0.1
cameraLookProportion = 0.4
cameraLookPad = 64
cameraAngle = 0

cameraMinX = _WAVEMANAGER.leftX - 64 + 8
cameraMaxX = _WAVEMANAGER.rightX + 64 - cameraW + 8
cameraMinY = _WAVEMANAGER.topY - 64 - 8
cameraMaxY = _WAVEMANAGER.bottomY + 64 - cameraH + 8

cameraUpdateBounds = false

cameraLookX = false
cameraLookY = false

global.screenShakeTotal = 0

view_camera[0] = camera_create_view(cameraX, cameraY, cameraW, cameraH)

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = cameraW
view_hport[0] = cameraH

view_visible[0] = true
view_enabled = true