extends Weapon

func Shoot(pos: Vector2, dir: Vector2):
	var projectile = ammo.instantiate()
	projectile.position = pos
	projectile.init(dir)
	projectiles.append(projectile)
	add_child(projectile)
