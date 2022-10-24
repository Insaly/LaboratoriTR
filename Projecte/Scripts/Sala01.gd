extends Node2D

var TileMap01 = load("res://Entitats/TileMap01.tscn")
var TileMap02 = load("res://Entitats/TileMap02.tscn")
var TileMap03 = load("res://Entitats/TileMap03.tscn")
var TileMap04 = load("res://Entitats/TileMap04.tscn")

var Activat01 = false
var Activat02 = false
var Activat03 = false
var Activat04 = false

var TileNom1 = ""
var TileNom2 = ""
var TileNom3 = ""
var TileNom4 = ""

func _ready():
	
	var TileMap01Entity = TileMap01.instance()
	$Position2D.add_child(TileMap01Entity)
	var TileMap02Entity = TileMap02.instance()
	$Position2D.add_child(TileMap02Entity)
	var TileMap03Entity = TileMap03.instance()
	$Position2D.add_child(TileMap03Entity)
	var TileMap04Entity = TileMap04.instance()
	$Position2D.add_child(TileMap04Entity)
	
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



#func _on_A1_body_entered(body):
#	var TileMap04Entity = TileMap04.instance()
#	$Position2D.add_child(TileMap04Entity)
#	TileNom4 = TileMap04Entity.name
	
#func _on_A2_body_entered(body):
#	var TileMap02Entity = TileMap02.instance()
#	$Position2D.add_child(TileMap02Entity)
#	TileNom2 = TileMap02Entity.name
	
#func _on_A3_body_entered(body):
#	var TileMap01Entity = TileMap01.instance()
#	$Position2D.add_child(TileMap01Entity)
#	TileNom1 = TileMap01Entity.name

#func _on_A4_body_entered(body):
#	var TileMap03Entity = TileMap03.instance()
#	$Position2D.add_child(TileMap03Entity)
#	TileNom3 = TileMap03Entity.name


#func _on_A1_body_exited(body):
#	$Position2D.get_node(TileNom4).queue_free()

#func _on_A2_body_exited(body):
#	$Position2D.get_node(TileNom2).queue_free()

#func _on_A3_body_exited(body):
#	$Position2D.get_node(TileNom1).queue_free()

#func _on_A4_body_exited(body):
#	$Position2D.get_node(TileNom3).queue_free()
