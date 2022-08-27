extends Node2D

func _ready():
    var _e = Events.connect("game_over", self, "_on_game_over")

func _on_game_over():
    get_tree().paused = true
