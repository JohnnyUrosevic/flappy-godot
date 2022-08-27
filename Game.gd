# extends Node2D


# var game_over = false
# var world = load("res://World.tscn")

# var current_world = null

# func _ready():
# 	var _e = Events.connect("game_over", self, "_on_game_over")
# 	current_world = world.instance()
# 	self.add_child(current_world)

# func _on_game_over():
# 	game_over = true

# func _input(event):
# 	if game_over and event.is_action_pressed("ui_accept"):
# 		game_over = false
# 		current_world.queue_free()

# 		call_deferred("restart")

# func restart():
# 	current_world = world.instance()
# 	self.add_child(current_world)
# 	Score.score = 0
# 	get_tree().paused = false
