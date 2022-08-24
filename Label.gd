extends Label

onready var score_singleton = get_node("/root/Score")

func _process(_delta):
	text = String(score_singleton.score)
