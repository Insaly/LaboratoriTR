extends KinematicBody2D

var velocitat = 400
var moviment = Vector2()

func _process(delta):
	
	moviment = Vector2()
	
	if Input.is_action_pressed("Dreta"):
		moviment.x += 1
	if Input.is_action_pressed("Esquerra"):
		moviment.x -= 1
	if Input.is_action_pressed("Amunt"):
		moviment.y -= 1
	if Input.is_action_pressed("Avall"):
		moviment.y += 1
	if moviment.length() > 0:
		moviment = moviment.normalized() * velocitat
	position += moviment * delta
	moviment = move_and_slide(moviment, Vector2.UP)
	animacio(moviment)
	
func animacio(moviment):
	
	if moviment.x != 0 or moviment.y != 0:
		$AnimatedSprite.play("running")
	elif moviment.x == 0 or moviment.y == 0:
		$AnimatedSprite.play("idle")
	if moviment.x > 0:
		$AnimatedSprite.flip_h = false
	elif moviment.x < 0:
		$AnimatedSprite.flip_h = true
