class_name Player

extends CharacterBody2D

const SPEED = 300.0
var weapon: Weapon

func PickUpWeapon(weapon_id:String):
	print("I got a ", Weapons.Database[weapon_id].name)
	var weaponScene = load(Weapons.Database[weapon_id].scene)
	weapon = weaponScene.instantiate()
	add_child(weapon)
	
func ShootWeapon():
	weapon.Shoot(position, Vector2(1.0, 0.0))

func _physics_process(delta):
	if Input.is_action_pressed("shoot"):
		ShootWeapon()
	
	var xDirection = Input.get_axis("move_left", "move_right")
	var yDirection = Input.get_axis("move_up", "move_down")
	if xDirection:
		velocity.x = xDirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if yDirection:
		velocity.y = yDirection * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
