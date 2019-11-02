if not other.bulletImmune then {
	other.isHurt = true
	other.hp -= damage
	other.hurtKnockback = 2
	other.hurtDirection = direction
}

instance_destroy()