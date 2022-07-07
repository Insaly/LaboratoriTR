extends Node2D

const Slime = preload("res://Entitats/Slime.tscn")
onready var generador_timer = $Timer_Generador
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_Generador_timeout():
	var Slime = Slime.instance()
	
