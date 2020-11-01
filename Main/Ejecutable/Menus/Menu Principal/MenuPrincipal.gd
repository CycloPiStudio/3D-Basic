extends Node

var Creditos = preload("res://Ejecutable/Menus/Creditos/Creditos.tscn").instance()

#cargar 3D
var Jugar = preload("res://Ejecutable/Menus/Select Personaje/SelectPersonaje.tscn").instance()

#var Cargar = preload("res://Ejecutable/Menus/Cargar/Cargar.tscn").instance()
var Multiplayer = preload("res://Ejecutable/Menus/MultiPlayer/Menu muliplayer.tscn").instance()
var Controles = preload("res://Ejecutable/Menus/Controles/controles.tscn").instance()

#cargar 2D
var Jugar2D = preload("res://Ejecutable/Juego/Escenarios/Niveles2D/Nivel_1/Nivel_1.tscn").instance()

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	print(Jugar2D, Jugar)
	pass

func _on_Creditos_pressed():
	get_node("/root/Global Menus").add_child(Creditos)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass 

func _on_Jugar_pressed():
	get_node("/root/Global Menus").add_child(Jugar)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass 

func _on_Salir_pressed():
	get_tree().quit()
	get_parent().get_node("boton").play()
	pass 

func _on_Cargar_pressed():
#	get_node("/root/Global Menus").add_child(Cargar)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass

func _on_Multiplayer_pressed():
	get_node("/root/Global Menus").add_child(Multiplayer)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass # Replace with function body.

func _on_Controles_pressed():
	get_node("/root/Global Menus").add_child(Controles)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass # Replace with function body.


func _on_TextureButton_button_down():
	print("mi primer print JAm")
	iralmenu()

	pass 

func _input(ev):
	if ev is InputEventKey:
		print(ev)
		iralmenu()
	pass # Replace with function body.

func iralmenu():
	print("funcion ir al menu")
	
	#2D
#	get_node("/root").add_child(Jugar2D)
#	get_parent().get_node("Musica Menus").stop()
	
	#3D
	get_node("/root/Global Menus").add_child(Jugar)

	#Musica y salida
#	get_parent().get_node("Musica Menus").stop()
	get_parent().get_node("boton").play()
	$".".queue_free()
	
