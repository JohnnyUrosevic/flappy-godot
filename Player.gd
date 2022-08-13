extends KinematicBody2D

export var JUMP_SPEED = -10
export var GRAVITY = 1

var velocity = Vector2.ZERO

func _input(event):
	if event.is_action_pressed("ui_accept"):
		velocity.y = JUMP_SPEED

func _physics_process(delta):
	velocity.y += GRAVITY

	var _collision = move_and_collide(velocity * delta)
