extends KinematicBody2D

export var SPEED = -1

func _physics_process(delta):
	var _collision = move_and_collide(Vector2(SPEED, 0) * delta)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
