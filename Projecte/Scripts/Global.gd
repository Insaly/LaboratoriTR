extends Node

signal timeout

var vel = Vector2()
var speed = 0
var dir := Vector2.RIGHT
var angle = 0
var no_renderitzat = {}

func _ready():
   Global.connect("timeout", self, "_timeout")

func change_dir():
	for entitat in no_renderitzat:
		angle = rand_range(0, 2 * PI)
		speed = rand_range(200, 300)
		dir = Vector2.RIGHT
		dir = dir.rotated(angle)
		dir.x *= (randi()%2)*2 - 1

		no_renderitzat[entitat][0] += (dir * speed)[0]
		no_renderitzat[entitat][1] += (dir * speed)[1]
		
func _timeout():
	change_dir()
