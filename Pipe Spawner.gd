extends Node2D


export var DELAY = 1 # 1 second
export var MAX_PIPE_OFFSET = 50
var current_time = 0

var scene = load("res://Pipe.tscn")
var spawn_pos

func _ready():
	spawn_pos = get_viewport().size.x

func _process(delta):
	current_time += delta

	if current_time > DELAY:
		current_time = 0
		var obj = scene.instance()
		add_child(obj)

		obj.position.x = spawn_pos
		obj.position.y += rand_range(-MAX_PIPE_OFFSET, MAX_PIPE_OFFSET)
