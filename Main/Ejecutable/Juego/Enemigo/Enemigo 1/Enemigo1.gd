extends KinematicBody


onready var player = get_node("/root/partida/PosicionSalida/personaje")
var posicion
var posPlayer 
var vida = 100

	
func _process(delta):
	posicion = get_global_transform()[3]
	posPlayer = player.get_global_transform()[3]
	var direccion = posPlayer - posicion
		
	$".".move_and_slide( direccion, Vector3( 0, 0, 0 ), false, 4, 0.785398, true )
	
	var colision = get_slide_collision(0)
#	print (colision)
	if  str(colision) != "[Object:null]":
#		print("objeto No nulo")
#		print(get_slide_collision(0).collider.get_parent().is_in_group("Player"))
#		print(get_slide_collision(0).collider.get_parent().name)
	
#	if body.is_in_group("Player"):
#		player.vida = player.vida - danno
#		print("vidaplayer: " +str(player.vida))
	


