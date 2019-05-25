extends Node

var Creditos = preload("res://Ejecutable/Menus/Creditos/Creditos.tscn").instance()
var Jugar = preload("res://Ejecutable/Menus/Select Personaje/SelectPersonaje.tscn").instance()
var Cargar = preload("res://Ejecutable/Menus/Cargar/Cargar.tscn").instance()

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
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
	get_node("/root/Global Menus").add_child(Cargar)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass