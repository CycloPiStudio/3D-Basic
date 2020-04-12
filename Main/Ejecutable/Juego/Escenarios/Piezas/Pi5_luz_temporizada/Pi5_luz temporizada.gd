extends Spatial

onready var luz = get_node("OmniLight")
#onready var area = get_node("Area")


var tiempo_luz
var toca_luz = OS.get_ticks_msec()

	

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tiempo_luz = OS.get_ticks_msec()
	disminuyeIntensidadLuz()
#	pass

func disminuyeIntensidadLuz():
	luz.light_energy = 10-((tiempo_luz - toca_luz)/1000)
	pass

func _on_Timer_timeout():
	print ("se acabo el tiempo")
	luz.light_energy = 0
	pass # Replace with function body.


func _on_Area_body_entered(body):
	toca_luz = OS.get_ticks_msec()
	if body.name == "personaje":
		luz.light_energy = 7

	pass # Replace with function body.
