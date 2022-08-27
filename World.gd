extends Node2D

var game_over = load("res://GameOver.tscn")

func _ready():
	var _e = Events.connect("game_over", self, "_on_game_over")

func _on_game_over():
	var game_over_ui = game_over.instance()
	self.add_child(game_over_ui)
	$Score.global_position.y = game_over_ui.rect_global_position.y
	get_tree().paused = true
