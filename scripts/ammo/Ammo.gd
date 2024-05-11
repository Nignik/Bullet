class_name Ammo

extends RigidBody2D

@export var damage: int
@export var speed: float

var direction: Vector2

func init(dir: Vector2):
	direction = dir
	

	
