extends Area2D

const Slime = preload("res://Entitats/Slime.tscn")
var nombre_entitats = 3000
var entitats_generades = 0

func _process(delta):
	if nombre_entitats > entitats_generades:
		entitats_generades += 1
		print(entitats_generades)
		var Subjecte = Slime.instance()
		add_child(Subjecte)
		Subjecte.position = $Position2D.position
