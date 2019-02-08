extends Node

onready var MenuPrin = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()

func _on_MenuPrincipal_pressed():
	get_node("/root/Global Menus").add_child(MenuPrin)
	get_parent().get_node("boton").play()
	$".".queue_free()
	pass
