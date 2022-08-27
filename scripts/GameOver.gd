extends Panel

func _input(event):
	if event.is_action_pressed("ui_accept"):
		Score.score = 0
		call_deferred("restart")

func restart():
	var _r = get_tree().reload_current_scene()
	get_tree().paused = false
	queue_free()
