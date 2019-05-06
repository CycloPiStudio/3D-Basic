extends KinematicBody


onready var player = get_node("/root/partida/PosicionSalida/personaje")
var posicion
var posPlayer 
var vida = 100

	
func _process(delta):
	posicion = get_global_transform()[3]
	posPlayer = player.get_global_transform()[3]
	var direccion = posPlayer - posicion
		
	$".".move_and_slide( direccion, Vector3( 0, 0, 0 )) #, 0.05, 4, 0.785398 )
	$".".look_at_from_position(posicion, posPlayer + Vector3(0,0.5,0), Vector3(0,1,0))
	
	
	var collision = move_and_collide(direccion)
#	print (collision)
	
	if collision:
		if collision.get_collider().is_in_group("Player"):
			print (Global.vida)
			Global.vida -= 10
	
#	var colision = get_slide_collision(0)
#	print (colision)
#	if  str(colision) != "[Object:null]":
#		print("objeto No nulo")
#		print(get_slide_collision(0).collider.get_parent().is_in_group("Player"))
#		print(get_slide_collision(0).collider.get_parent().name)
#	
#	if body.is_in_group("Player"):
#		player.vida = player.vida - danno
#		print("vidaplayer: " +str(player.vida))
	


