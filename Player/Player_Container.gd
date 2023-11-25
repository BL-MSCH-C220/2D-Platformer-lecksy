extends Node2D

@onready var Player = load("res://Player/Player.tscn")


func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instantiate()
		player.position = $Spawn.position
		add_child(player)
