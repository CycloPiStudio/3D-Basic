extends Node

var SelecNiveles = preload("res://Ejecutable/Menus/Select Niveles/SelectNiveles.tscn").instance()

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	pass
	
func _load_scene(personaje):
	Global.personaje = load(personaje).instance()
	Global.personaje.set_name("personaje")
	Global.RutaPersonajeSelect = personaje
	get_node("/root/Global Menus").add_child(SelecNiveles)
	$".".queue_free()

func _on_Player_1_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 1/Personaje1.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body

func _on_Player_2_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 2/Personaje2.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body

#func _process(delta):
#	print (Global.personaje)
#	print (Global.personajeSelect)

