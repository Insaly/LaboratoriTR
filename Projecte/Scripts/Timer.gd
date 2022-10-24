extends Timer

var temps = 1
var process = 0

func _ready():
	self.start()

func _process(delta):
	process = delta

func _on_Timer_timeout():
	
	print(str(Performance.get_monitor(Performance.TIME_FPS)) + " " + str(Performance.get_monitor(Performance.MEMORY_STATIC))+ " " + str(temps))
	temps += 1
	self.start()
	
