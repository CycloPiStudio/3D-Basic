#	esto hay cambiarlo o quitarlo
extends Spatial
var cancion

func _ready():
	centrar_Fondo()
	cancion = get_node("AudioMusicNivel_01")
	cancion.play()
	
	pass

func _process(_delta):
#	print (Position2D.)
#	print ("position: " + str(position))
#	print ("global position: " + str(global_position))
	if cancion.is_playing():
		pass
	else:
		cancion.play()
		

func centrar_Fondo():
	#set_position(get_viewport().size/2)
	pass
