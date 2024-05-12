class_name Weapon

extends Node

@export var ammo: PackedScene
@export var reloadTime: float = 1

var reloaded: bool = true
var reloadTimer: Timer
var projectiles: Array[Projectile]
var enemyGroup: String

func Shoot(pos:Vector2, dir: Vector2):
	pass
	
func Reload():
	reloaded = false
	reloadTimer = Timer.new()
	reloadTimer.one_shot = true
	reloadTimer.wait_time = reloadTime
	reloadTimer.timeout.connect(_on_reloaded)
	add_child(reloadTimer)
	reloadTimer.start()
	
func _on_reloaded():
	reloaded = true
	
	
