extends KinematicBody


onready var player = get_node("/root/partida/PosicionSalida/personaje")
var posicion = Vector3(0,0,0)
var posPlayer = Vector3(0,0,0)
var vida = 500
var proyectil
	
func _process(_delta):
#	posicion = get_global_transform()[3]
#	posPlayer = player.get_global_transform()[3]
	var direccion = posPlayer - posicion
	var objetivoXZ = posPlayer - Vector3(0,posPlayer[1],0)
		
	#Mueve al nodo a la posicion del Player
#	$".".move_and_slide( direccion, Vector3( 0, 0, 0 )) #, 0.05, 4, 0.785398 )
	#Gira al nodo para mirar al Player
#	$".".look_at( objetivoXZ, Vector3(0,1,0))

	$".".look_at_from_position(posicion, objetivoXZ, Vector3(0,1,0))
#	print (objetivoXZ)
		
	var collision = move_and_collide(direccion)
#	print (collision)

	if collision:
		print ("colision: ", collision.get_collider().name)
		if collision.get_collider().is_in_group("Player"):
#			print (Global.vida)
			Global.vida -= 10
			vida -=0.0000000000000000000000000000000000000000000000000000000000001
		
		if collision.get_collider().name == "Bala":
#			print (vida)
			vida -= 10
	if vida <= 0:
		queue_free()
		

var proyectil
func _on_Area_body_entered(body):
	proyectil = get_node(body.get_path())
	print (proyectil.name)
	print (proyectil.get_parent().get_name())
	if proyectil.get_parent().get_name() == "partida" and Global.arma == 1:
		mata_malo(10)
		
	if proyectil.get_parent().get_name() == "rig" and Global.arma == 2:
		mata_malo(200)
	
#	if vida < 0:
#		AudioMuerteMalo.play()
#		banderaMaloMuerto = true
#		posiPot = $".".get_global_transform()[3]
#		posiPotTransform = $".".get_global_transform()
#		TiempoMuerte.start()
#		print("malo muerto")
	
#	if body.is_in_group("Player"):
		# instancia nodo mensaje
#		NoMensa = preNoMensa.instance()
#		get_parent().add_child(NoMensa)
		# poner texto del mensje y la posicion: + bajo mas centrado
#		NoMensa.mostra_mensa("Impacto del malo : " + str(get_name()),3,0.0)
	pass # replace with function body

func mata_malo(danno_malo):
	vida -= danno_malo
#	AudioDannoMalo.play()
#	print("Acho el malo:", vida)
	# instancia nodo mensaje
#	NoMensa = preNoMensa.instance()
#	get_parent().add_child(NoMensa)
	# mostra mensa:  texto del mensje, posicion mas grande menos centrado, daño al bueno cuidao, al bueno cuidao
#	NoMensa.mostra_mensa("Impacto al malo: " + str(danno_malo)+"de dano",5,0)
	pass # Replace with function body.
