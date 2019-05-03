extends Spatial
onready var Arma = $P3_Cannon

#Pa mensajes
var preNoMensa = preload("res://Ejecutable/Juego/HUD/HUD 8 Mensaje/Hud_mensaje_info.tscn")
var NoMensa
#var posEnemigo = get_global_transform()
#var rotEnemigo 
var vidaMalo = 1
var proyectil
onready var AudioDannoMalo = get_node("AudioDannoMalo")
onready var AudioMuerteMalo = get_node("AudioMuerteMalo")
onready var TiempoMuerte = get_node("TiempoMuerte")
var Midelta
var banderaMaloMuerto = false


var posiPot = Vector3()
var posiPotTransform

onready var player = get_node("/root/partida/PosicionSalida/personaje")

func _ready():
	
	pass

func _process(delta):
	$".".look_at_from_position($".".get_global_transform()[3], player.get_global_transform()[3] + Vector3(0,0.5,0), Vector3(0,1,0))
	Midelta = delta
	if banderaMaloMuerto:
		print("jjjjjjjjjjjjjj")
		posiPot.y = posiPot.y + delta*20
		posiPotTransform[3] = posiPot
		$".".set_global_transform(posiPotTransform)
#	$".".rotate_y(PI/2)
	#	rotate(Vector3(0,1,0), PI/300)
#	rotEnemigo = get_rotation()
#	print(player.name)
#	print (get_rotation())
	

	
#	giro = transform[3]  TiempoMuerte
#	giro = giro * Vector3(0.1,0.01,0.01)
#	print (giro)
#	print (Transform)
#	rotate_object_local(Vector3(0, 1, 0), PI/300)
#	giro = Transform()
#	var pos = giro.xform(pos)
#	print (posEnemigo[3] + rotation_degrees(10,0,0))

#var t = Transform()
#pos = t.xform(pos) # transform 3D position
#pos = t.basis.xform(pos) # (only rotate)
#pos = t.origin + pos # (only translate)
	pass

func _on_Timer_timeout():
	Arma.Disparo()
#	print ("time out")
	pass 

func _on_Area_body_entered(body):
	proyectil = get_node(body.get_path())# coge el body
	
	if proyectil.get_parent().get_name() == "rig" and Global.arma == 1:
		mata_malo(10)
		
	if proyectil.get_parent().get_name() == "rig" and Global.arma == 2:
		mata_malo(20)
	
	if vidaMalo < 0:
		AudioMuerteMalo.play()
		banderaMaloMuerto = true
		posiPot = $".".get_global_transform()[3]
		posiPotTransform = $".".get_global_transform()
		TiempoMuerte.start()
		print("malo muerto")
	
	if body.is_in_group("Player"):
		# instancia nodo mensaje
		NoMensa = preNoMensa.instance()
		get_parent().add_child(NoMensa)
		# poner texto del mensje y la posicion: + bajo mas centrado
		NoMensa.mostra_mensa("Impacto del malo : " + str(get_name()),8,200)
	pass # replace with function body

func mata_malo(danno_malo):
		vidaMalo -= danno_malo
		AudioDannoMalo.play()
		print("Acho el malo:", vidaMalo)

func _on_TiempoMuerte_timeout():
	queue_free()
	pass # replace with function body
