extends Weapon

@export var shootPattern: ShootPattern

func Shoot(pos: Vector2, dir: Vector2):
	if !reloaded:
		return
	
	for projectile in shootPattern.Shoot(ammo, pos, dir, enemyGroup):
		add_child(projectile)
		projectiles.append(projectile)
	
	# set reloaded to false so can't shoot and start reload
	Reload()
