class_name Player

extends CharacterBody2D

@export var speed: float = 300.0
@export var health: int = 10
@export_enum("WSAD", "ARROWS") var movementScheme: int

var movement: Dictionary
var weapon: Weapon
var shoot_dir: Vector2 = Vector2(0.0, 0.0)

func _ready():
	if movementScheme == 0:
		movement = MovementSchemes.Database["WSAD"]
	else:
		movement = MovementSchemes.Database["arrows"]

func PickUpWeapon(weapon_id:String):
	print("I got a ", WeaponTypes.Database[weapon_id].name)
	var weaponScene = load(WeaponTypes.Database[weapon_id].scene)
	weapon = weaponScene.instantiate()
	add_child(weapon)
	
func ShootWeapon():
	if weapon:
		weapon.Shoot(position, shoot_dir)
		
func TakeDamage(dmg: int):
	health -= dmg
	print("took ", dmg, " damage")
	if health <= 0:
		queue_free()
	

func _physics_process(delta):
	ShootWeapon()
	
	var xDirection = Input.get_axis(movement["move_left"], movement["move_right"])
	var yDirection = Input.get_axis(movement["move_up"], movement["move_down"])
	if xDirection:
		velocity.x = xDirection * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	if yDirection:
		velocity.y = yDirection * speed
	else:
		velocity.y = move_toward(velocity.x, 0, speed)
		
	move_and_slide()
		
