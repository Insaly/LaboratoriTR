extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("4"):
		queue_free()
