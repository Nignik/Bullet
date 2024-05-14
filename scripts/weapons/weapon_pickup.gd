extends Node2D

@export var weaponBlueprint: WeaponBlueprint

func _on_body_entered(body):
	if body.has_method("PickUpWeapon"):
		body.PickUpWeapon(weaponBlueprint)
		queue_free()
