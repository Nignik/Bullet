extends Ammo

func _physics_process(delta):
	var velocity = direction * speed * delta
	move_and_collide(velocity)

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
