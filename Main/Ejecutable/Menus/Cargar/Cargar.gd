extends Node



func _ready():
	mostrarGuardados()
	pass 


func _on_LineEdit_text_changed(new_text):
	Global.nombre_guardado = new_text
	pass 


func _on_Cargar_pressed():
	Global.cargar(Global.nombre_guardado)
	pass # replace with function body
	
var partidasGuardadas = Directory.new()
func mostrarGuardados():
	
	partidasGuardadas.open("user://game_saves")
	$Label.set_text(str(listarGuardados()))
	
func listarGuardados():	
	partidasGuardadas.list_dir_begin()
	var file_name = partidasGuardadas.get_next()
	while (file_name != ""):
		if partidasGuardadas.current_is_dir():
			print("Found directory: " + file_name)
		else:
			print("Found file: " + file_name)
		file_name = partidasGuardadas.get_next()
		
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