extends Area2D

const Slime = preload("res://Entitats/Slime.tscn")

func _ready():
	$Generador.start()

func _on_Generador_timeout():
	var Subjecte = Slime.instance()
	add_child(Subjecte)
	Subjecte.position = $Position2D.position
	$Generador.start()
