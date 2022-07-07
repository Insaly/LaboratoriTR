extends KinematicBody2D

var vel = Vector2()
var speed = 0
var dir := Vector2.RIGHT
var angle = 0

func _ready():
	randomize()
	change_dir()

func _process(delta):
	vel = move_and_slide(dir * speed, Vector2.UP)

func change_dir():
	angle = rand_range(0, 2 * PI)
	speed = rand_range(200, 300)
	dir = Vector2.RIGHT
	dir = dir.rotated(angle)
	dir.x *= (randi()%2)*2 - 1
	$Moviment.wait_time = rand_range(1, 1.5)
	$Moviment.start()

func _on_Moviment_timeout():
	change_dir()
