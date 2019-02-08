extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var graf_tiempo
onready var start_time = OS.get_ticks_msec()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	graf_tiempo = get_node("/root/partida/HUD/HUD2tiempoNodo/Datos_comunes/Label_datos_comunes")
	graf_tiempo.set_text("Aquí pondré la vida actualizada")
	graf_tiempo.set_position(Vector2(815,100))
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	graf_tiempo.set_text("Tiempo transcurrido: " + str(OS.get_ticks_msec() - start_time) + " ms")

#	pass
