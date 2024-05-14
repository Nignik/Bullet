extends ShootPattern

class_name DefaultShot

#remember to add ammoType type hint
func Shoot(ammoType: PackedScene, pos, dir, enemyGroup) -> Array[Projectile]:
	var projectiles: Array[Projectile] = []
	for i in range(projectileAmount):
		var newProjectile = ammoType.instantiate()
		newProjectile.position = pos
		
		newProjectile.enemyGroup = enemyGroup
		if enemyGroup == "player_1":
			newProjectile.set_collision_layer_value(2, true)
			newProjectile.set_collision_mask_value(1, true)
		elif enemyGroup == "player_2":
			newProjectile.set_collision_layer_value(1, true)
			newProjectile.set_collision_mask_value(2, true)
			
		newProjectile.init(dir)
		projectiles.append(newProjectile)
		
	return projectiles
