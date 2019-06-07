extends Node

onready var botonGuardados = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Boton.tscn")
signal boton

func _ready():
	$Guardados/Cargar1.set_text(Global.nombre_guardado1)
	$Guardados.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/2))
	
	mostrarGuardados()
	pass 


func _on_LineEdit_text_changed(new_text):
	Global.nombre_guardado = new_text
	pass 


func _on_Cargar_pressed():
	Global.cargar(Global.nombre_guardado)
	get_parent().get_node("boton").play()
	pass # replace with function body
	
var partidasGuardadas = Directory.new()

func mostrarGuardados():
	partidasGuardadas.open("user://game_saves")
	listarGuardados()
	pass
	
	
#	$Label.set_text(str(listarGuardados()))
var numGuardados = 0
func listarGuardados():	
	var Boton = botonGuardados.instance()
	partidasGuardadas.list_dir_begin()
	file_name = partidasGuardadas.get_next()
	while (file_name != ""):
		if !partidasGuardadas.current_is_dir():
			numGuardados = numGuardados + 1
			
#			for i in numGuardados:
#				Boton.set_name(file_name)
#				var nombre = str(file_name)
#				$Guardados.add_child(nombre)
#				$Guardados/Boton/Button_datos_comunes.set_text(file_name)
#
##			$Guardados/Boton/Button_datos_comunes.connect(Boton, self, _cargarPartida())
			print("Found directory: " + file_name)
			pass
		else:
			numGuardados = numGuardados + 1
			print (numGuardados)
			$Guardados.add_child(Boton)
			$Guardados/Boton/Button_datos_comunes.set_text(file_name)
			print("Found file: " + file_name)
			pass
		file_name = partidasGuardadas.get_next()
		
var file_name
func _cargarPartida(file_name):
	Global.cargar(file_name)
	
#func mostrarGuardados():
#	var partidasGuardadas = Directory.new()
#	partidasGuardadas.open("user://game_saves")
#	$Label.set_text(str(partidasGuardadas.list_dir_begin()))
#	partidasGuardadas.list_dir_begin()
#	var file_name = partidasGuardadas.get_next()
#	while (file_name != ""):
#		if partidasGuardadas.current_is_dir():
#			print("Found directory: " + file_name)
#		else:
#			print("Found file: " + file_name)
#		file_name = partidasGuardadas.get_next()


func _on_Cargar1_pressed():
	Global.cargar(Global.nombre_guardado1)
	pass # replace with function body
