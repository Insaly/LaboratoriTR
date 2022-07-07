extends Area2D

const Slime = preload("res://Entitats/Slime.tscn")

func _process(delta):
#	while 1 < 2:
#		$Timer_generador.start()
	if Input.is_action_pressed("ui_accept"):
		genera()
		
func _on_Timer_generador_timeout():
	var Slime = Slime.instance()
	Slime.position = position
	get_parent().add_child(Slime)
func genera():
	var slime = Slime.instance()
	Slime.position = position
	get_parent().add_child(slime) 
