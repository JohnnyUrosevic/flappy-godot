extends Node2D

func _on_Player_game_over():
	get_tree().paused = true
