class_name Projectile

extends RigidBody2D

@export var damage: int
@export var speed: float

var enemyGroup: String
var direction: Vector2

func _init():
	self.add_to_group("projectiles")

func init(dir: Vector2):
	direction = dir
	

	
