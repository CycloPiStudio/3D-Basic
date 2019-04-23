extends Control

onready var MenPrincipal = load("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()






func _on_Button_datos_comunes_pressed():
	get_node("/root/Global Menus").add_child(MenPrincipal)
	get_node("/root/Global Menus/boton").play()
	get_parent().get_parent().queue_free()
	#print(get_parent().get_parent().name)
	pass # Replace with function body.

