if not other.bulletImmune then {
	other.isHurt = true
	other.hp -= damage
	other.hurtKnockback = 1
	other.hurtDirection = direction
	other.hurtIntensity = 1.5
}

instance_destroy()