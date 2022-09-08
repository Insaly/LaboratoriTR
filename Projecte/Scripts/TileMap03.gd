extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("3"):
		queue_free()
