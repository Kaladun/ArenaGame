cameraX = 64
cameraY = 64

cameraW = global.gameWidth
cameraH = global.gameHeight

cameraW2 = cameraW / 2
cameraH2 = cameraH / 2

cameraTargetX = room_width / 2
cameraTargetY = room_height / 2

cameraSpeed = 0.1
cameraLockRad = 0.1
cameraLookProportion = 0.4
cameraLookPad = 64
cameraAngle = 0

cameraMinX = 0
cameraMaxX = room_width - cameraW
cameraMinY = 0
cameraMaxY = room_height - cameraH
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