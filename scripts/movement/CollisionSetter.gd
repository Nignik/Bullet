extends Resource

class_name CollisionSetter

@export_category("Projectiles")
@export var projectileLayers_1: Array[int]
@export var projectileMasks_1: Array[int]
@export var projectileLayers_2: Array[int]
@export var projectileMasks_2: Array[int]

@export_category("Players")
@export var playerLayers_1: Array[int]
@export var playerMasks_1: Array[int]
@export var playerLayers_2: Array[int]
@export var playerMasks_2: Array[int]

func setPlayerCollision(player: Player, team: int) -> Player:
	var layers: Array[int]
	var masks: Array[int]
	if team == 1:
		layers = playerLayers_1
		masks = playerMasks_1
	else:
		layers = playerLayers_2
		masks = playerMasks_2
	
	for layer in layers:
		player.set_collision_layer_value(layer, true)
	for mask in masks:
		player.set_collision_mask_value(mask, true)
		
	return player
	
# correct later can be done better for sure
func setProjectileCollision(projectile: Projectile, team: int) -> Projectile:
	var layers: Array[int]
	var masks: Array[int]
	if team == 1:
		layers = projectileLayers_1
		masks = projectileMasks_1
	else:
		layers = projectileLayers_2
		masks = projectileMasks_2
	
	for layer in layers:
		projectile.set_collision_layer_value(layer, true)
	for mask in masks:
		projectile.set_collision_mask_value(mask, true)
		
	return projectile
	

