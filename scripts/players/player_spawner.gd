extends Node

var Player1Scene = preload("res://scenes/Player.tscn")
var Player2Scene = preload("res://scenes/Player.tscn")

@export var player1_spawn: Vector2
@export var player2_spawn: Vector2

var rng = RandomNumberGenerator.new()

func _ready():
	spawn_players()

func spawn_players():
	var player1_instance = Player1Scene.instantiate()
	var player2_instance = Player2Scene.instantiate()
	
	player1_instance.position = player1_spawn
	player2_instance.position = player2_spawn
	
	add_child(player1_instance)
	add_child(player2_instance)
