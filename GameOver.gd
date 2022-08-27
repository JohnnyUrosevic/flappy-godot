extends Panel

func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().paused = false
		var _r = get_tree().reload_current_scene()
		Score.score = 0
		call_deferred("restart")

func restart():
	var _r = get_tree().reload_current_scene()
	queue_free()
