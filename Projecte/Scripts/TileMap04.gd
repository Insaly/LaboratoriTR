extends Node2D

var altura := 3000
var amplada := 3000

func _ready():
	for x in amplada:
		for y in altura:
			$TileMapInfern.set_cell(-x-1,-y-1,0)

func _process(delta):
	if Input.is_action_just_pressed("4"):
		queue_free()
