extends Node2D

var PlayerScene = preload("res://scenes/Player.tscn")

var rng = RandomNumberGenerator.new()

func _ready():
	spawn_player()

func spawn_player():
	var player_instance = PlayerScene.instantiate()
	add_child(player_instance)
