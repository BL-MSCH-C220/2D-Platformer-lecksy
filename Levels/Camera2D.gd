extends Camera2D

var player = null

func _ready():
	enabled = true

func _physics_process(_delta):
	player = get_node_or_null("/root/Game/Player")
	if player != null:
		global_position = player.global_position
	else:
		position = Vector2(0,0)
