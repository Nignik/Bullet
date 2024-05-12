extends Weapon

func Shoot(pos: Vector2, dir: Vector2):
	if !reloaded:
		return
		
	# create and shoot projectile
	var projectile = ammo.instantiate()
	projectile.position = pos
	projectile.enemyGroup = enemyGroup
	
	
	if enemyGroup == "player_1":
		projectile.set_collision_layer_value(2, true)
		projectile.set_collision_mask_value(1, true)
	elif enemyGroup == "player_2":
		projectile.set_collision_layer_value(1, true)
		projectile.set_collision_mask_value(2, true)
	
	projectile.init(dir)
	projectiles.append(projectile)
	add_child(projectile)
	
	# set reloaded to false so can't shoot and start reload
	Reload()
