extends ParallaxBackground

export var SPEED = 100

func _process(delta):
	scroll_base_offset.x -= SPEED * delta
