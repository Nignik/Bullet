extends Projectile

func _physics_process(delta):
	var velocity = direction * speed * delta
	
	var collisionResult = move_and_collide(velocity)
	if collisionResult != null:
		var body = collisionResult.get_collider()
		if body.is_in_group(enemyGroup):
			body.TakeDamage(damage)
			queue_free()
	

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
