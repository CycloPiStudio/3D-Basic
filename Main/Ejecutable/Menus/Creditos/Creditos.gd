extends Node



func _ready():
	escrituraLabel()

func escrituraLabel():  
	var file = File.new()
	file.open("res://Ejecutable/Menus/Creditos/Licencias/Licencias.gd", File.READ)
	$Creditos.set_text(str(file.get_as_text()))
