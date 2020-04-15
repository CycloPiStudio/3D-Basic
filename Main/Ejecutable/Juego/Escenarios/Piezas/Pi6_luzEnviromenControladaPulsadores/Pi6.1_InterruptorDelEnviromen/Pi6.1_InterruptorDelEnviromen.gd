extends Spatial

#onready var luz = get_node("OmniLight")
#onready var area = get_node("Area")
onready var luzEnviroment = get_parent().get_node("WorldEnvironment")

#var tiempo_luz
#var toca_luz = OS.get_ticks_msec()
var rojo = 1.0
var verde = 1.0
var azul = 1.0



# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
#	tiempo_luz = OS.get_ticks_msec()
#	print ("nivel luz: " + str(luzEnviroment.get_environment().get_bg_energy()))
#	disminuyeIntensidadLuz()
#	print (luz.light_energy)
#	print("tiempo " + str(get_node(".").name)+ ": " + str(get_node("Timer").time_left))
	
#	print ("tiempo: " + str(float(tiempo_luz - toca_luz)/10000))
	pass




func _on_Area_body_entered(body):
#	toca_luz = OS.get_ticks_msec()
	if body.name == "personaje":
		print ("se hizo la luz")
#		luz.light_energy = 7
#		luzEnviroment.get_environment(set_bg_energy(7))
		get_parent().get_node("WorldEnvironment").rojo = 1.0
		get_parent().get_node("WorldEnvironment").verde = 1.0
		get_parent().get_node("WorldEnvironment").azul = 1.0
		luzEnviroment.get_environment().set_bg_energy(rojo * 5)
		luzEnviroment.get_environment().set_ambient_light_color(Color(rojo,verde,azul))
		get_parent().get_node("WorldEnvironment/Timer").start()

	pass # Replace with function body.


#func _on_Timer_timeout():
#	get_parent().get_node("WorldEnvironment").disminuyeIntensidadLuz()
#	pass # Replace with function body.