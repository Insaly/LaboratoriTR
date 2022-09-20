extends Area2D

const Slime = preload("res://Entitats/Slime.tscn")
var nombre_entitats = 300
var entitats_generades = 0

func _ready():
	$MovimentGlobal.start()

func _process(delta):
	
	if nombre_entitats > entitats_generades:
		entitats_generades += 1
		print("Entitats generades: " + str(entitats_generades))
		var Subjecte = Slime.instance()
		add_child(Subjecte)
		Subjecte.acabo_de_neixer = true
		Subjecte.position = $Position2D.position
	
	for entitat in Global.no_renderitzat:
		if (-290 > Global.no_renderitzat[entitat][0] and Global.no_renderitzat[entitat][0] < 290) and (-290 > Global.no_renderitzat[entitat][1] and Global.no_renderitzat[entitat][1] < 290):
			var Subjecte = Slime.instance()
			Subjecte.set_name(entitat)
			add_child(Subjecte)
			print("Ha renascut " + str(Subjecte.name))
			Subjecte.position.x = (975 + Global.no_renderitzat[entitat][0])
			Subjecte.position.y = (540 + Global.no_renderitzat[entitat][1])
			Global.no_renderitzat.erase(entitat)
			print(str(Global.no_renderitzat))
			
func _on_MovimentGlobal_timeout():
	Global.emit_signal("timeout")
	$MovimentGlobal.wait_time = rand_range(1, 1.5)
	$MovimentGlobal.start()
