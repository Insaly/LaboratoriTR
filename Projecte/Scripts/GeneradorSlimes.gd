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
		Subjecte.position = $Position2D.position
	
	for entitat in Global.no_renderitzat:
		if (775 < Global.no_renderitzat[entitat][0] and Global.no_renderitzat[entitat][0] < 1175) and (340 < Global.no_renderitzat[entitat][1] and Global.no_renderitzat[entitat][1] < 740):
			var Subjecte = Slime.instance()
			Subjecte.set_name(entitat)
			add_child(Subjecte)
			Subjecte.global_position = (Global.no_renderitzat[entitat])
			Global.no_renderitzat.erase(entitat)
			
func _on_MovimentGlobal_timeout():
	Global.emit_signal("timeout")
	$MovimentGlobal.wait_time = rand_range(1, 1.5)
	$MovimentGlobal.start()
