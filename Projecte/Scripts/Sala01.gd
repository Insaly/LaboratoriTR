extends Node2D

var TileMap01 = preload("res://Entitats/TileMap01.tscn")
var TileMap02 = preload("res://Entitats/TileMap02.tscn")
var TileMap03 = preload("res://Entitats/TileMap03.tscn")
var TileMap04 = preload("res://Entitats/TileMap04.tscn")

var Activat01 = true
var Activat02 = true
var Activat03 = true
var Activat04 = true

func _process(delta):
	if Input.is_action_just_pressed("1"):
		if Activat01:
			var TileMap01Entity = TileMap01.instance()
			$Position2D.add_child(TileMap01Entity)
		Activat01 = !Activat01
		
	if Input.is_action_just_pressed("2"):
		if Activat02:
			var TileMap02Entity = TileMap02.instance()
			$Position2D.add_child(TileMap02Entity)
		Activat02 = !Activat02
		
	if Input.is_action_just_pressed("3"):
		if Activat03:
			var TileMap03Entity = TileMap03.instance()
			$Position2D.add_child(TileMap03Entity)
		Activat03 = !Activat03
		
	if Input.is_action_just_pressed("4"):
		if Activat04:
			var TileMap04Entity = TileMap04.instance()
			$Position2D.add_child(TileMap04Entity)
		Activat04 = !Activat04	
