extends Node

var coins = 0
var score = 0

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func _unhandled_input(event):
	if event.is_action_pressed("Menu"):
		var menu = get_node_or_null("/root/Game/UI/Pause")
		if menu == null:
			get_tree().quit()
		else:
			if menu.visible:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
				get_tree().paused = false
				menu.hide()
			else:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
				get_tree().paused = true
				menu.show()


func add_coin():
	coins += 1
	var Coins = get_node_or_null("/root/Game/UI/HUD/Coins")
	if Coins != null:
		Coins.text = "Coins: " + str(coins)

func update_score(_s):
	score += 5
