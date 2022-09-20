extends Node2D

var altura := 10
var amplada := 10

func _ready():
	for x in amplada:
		for y in altura:
			$TileMapHivern.set_cell(x,y,0)

func _process(delta):
	if Input.is_action_just_pressed("3"):
		queue_free()
