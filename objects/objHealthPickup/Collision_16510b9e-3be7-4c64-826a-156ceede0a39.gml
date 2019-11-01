objPlayer.hp = min(objPlayer.hp + 1, 5)
instance_destroy()

createTextPop(x,y,"HEALTH UP!")