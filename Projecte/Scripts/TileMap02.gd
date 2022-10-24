extends Node2D

var altura := 1000
var amplada := 1000

func _ready():
	for x in amplada:
		for y in altura:
			$TileMapTardor.set_cell(-x-1,y,0)

func _process(delta):
	if Input.is_action_just_pressed("2"):
		queue_free()
