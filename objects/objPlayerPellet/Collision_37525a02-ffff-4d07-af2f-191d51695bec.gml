if not other.bulletImmune then {
	other.isHurt = true
	other.hp -= damage
}

instance_destroy()