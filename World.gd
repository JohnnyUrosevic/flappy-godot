extends Node2D

var game_over = load("res://GameOverUI.tscn")

func _ready():
	var _e = Events.connect("game_over", self, "_on_game_over")

func _on_game_over():
	$GameOver.show()
	$Score.global_position.y = $GameOver.rect_global_position.y
	get_tree().paused = true
