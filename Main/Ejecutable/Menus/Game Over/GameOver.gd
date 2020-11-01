extends Node

#var tope = 160
#var contador = 0
var preMenuPrincipal = load("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn")
var MenuPrincipal

func _ready():
	set_process(true)
	$".".get_node("AudioGameOver").play()
	pass

#func _process(delta):
#	contador += 100*delta
#	if contador > tope:
#		print("fuera")
#
#		get_node("/root/Global Menus").add_child(MenuPrincipal)
#		get_parent().get_node("Musica Menus").play()
#		$".".queue_free()
#	pass


func _on_Timer_timeout():
	MenuPrincipal = preMenuPrincipal.instance()
	get_node("/root/Global Menus").add_child(MenuPrincipal)
	get_parent().get_node("Musica Menus").play()
	$".".queue_free()
	
	pass # Replace with function body.
