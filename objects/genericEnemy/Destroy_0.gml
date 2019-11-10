if random(1) < computeVampireOdds() then {
	instance_create_depth(x,y,0,objVampireHeal)
}

comboAddKill()
scoreAddKill(scoreBase)

createBloodSplatter(1)