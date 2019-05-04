extends KinematicBody


onready var player = get_node("/root/partida/PosicionSalida/personaje")
var posicion
var posPlayer 

	
func _process(delta):
	posicion = get_global_transform()[3]
	posPlayer = player.get_global_transform()[3]
	var direccion = posPlayer - posicion
	
	$".".move_and_slide( direccion, Vector3( 0, 0, 0 ), false, 4, 0.785398, true )







