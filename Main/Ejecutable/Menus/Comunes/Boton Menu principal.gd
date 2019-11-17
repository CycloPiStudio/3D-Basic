extends Control

onready var MenPrincipal = load("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn").instance()


func _on_Button_datos_comunes_pressed():
	var nodoAbuelo = get_parent().get_parent()
	get_node("/root/Global Menus").add_child(MenPrincipal)
	get_node("/root/Global Menus/boton").play()
	if nodoAbuelo.name == "SelectPlayer" or "SelectNiveles" or "Creditos" or "GameOver" or "Win":
		nodoAbuelo.queue_free()	
	if nodoAbuelo.name == "Pause-PopUp":
		get_node("/root/partida").queue_free()
		get_tree().paused = false
#	print(nodoAbuelo.name)	

	if str(Global.nivel) == "nivel1":
		Global.nivel = 0
	if str(Global.nivel) == "nivel2":
		Global.nivel = 1
	if str(Global.nivel) == "nivel3":
		Global.nivel = 2
	if str(Global.nivel) == "nivel4":
		Global.nivel = 3
	
	pass
