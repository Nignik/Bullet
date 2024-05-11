extends Node2D

@export var weapon_id:String

func _on_body_entered(body):
	if body.has_method("PickUpWeapon"):
		body.PickUpWeapon(weapon_id)
		queue_free()
