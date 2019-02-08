extends Node2D

var preGameOver = preload("res://Ejecutable/Menus/Win/Win.tscn").instance()
var Personaje1Muerto


func _on_Area2D_body_entered(body):
	#esto es una prueba pa a apagar la partida 
	print(Global.nivel)
	if get_tree().get_nodes_in_group("Enemigo").size() == 0:
		get_node("/root/Global Menus").add_child(preGameOver)
		$".".queue_free()
		get_tree().get_root() # Access via scene main loop.
		Personaje1Muerto = get_parent().queue_free()
		if Global.nivel == "nivel1":
			Global.pantalla = 1
		if Global.nivel == "nivel2":
			Global.pantalla = 2
		if Global.nivel == "nivel3":
			Global.pantalla = 3
		if Global.nivel == "nivel4":
			Global.pantalla = 4
		print(Global.nivel)
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/nivel1.tscn":
			
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel2/nivel2.tscn":
#			Global.pantalla = 2
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel3/nivel3.tscn":
#			Global.pantalla = 3
#		if Global.nivel == "res://Ejecutable/Juego/Escenarios/Niveles/Nivel4/nivel4.tscn":
#			Global.pantalla = 4
	pass 
