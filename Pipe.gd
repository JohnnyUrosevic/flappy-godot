extends KinematicBody2D

export var SPEED = -1

var score_increased = false
onready var score_singleton = get_node("/root/Score")

func _physics_process(delta):
	var _collision = move_and_collide(Vector2(SPEED, 0) * delta)

	if not score_increased and position.x <= get_viewport().size.x / 2:
		score_singleton.score += 1
		score_increased = true

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
