extends KinematicBody2D

export var SPEED = -1

var score_increased = false

func _physics_process(delta):
    var collision = move_and_collide(Vector2(SPEED, 0) * delta)

    if collision:
        Events.emit_signal("game_over")

    if not score_increased and position.x <= get_viewport().size.x / 2:
	    Score.score += 1
	    score_increased = true

func _on_VisibilityNotifier2D_screen_exited():
    queue_free()
