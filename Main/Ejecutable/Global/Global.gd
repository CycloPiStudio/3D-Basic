extends Node

var personaje = 0
var RutaPersonajeSelect = 0
var nivel = 0
var vida = 0
var puntos = 0
var arma = 0
var pantalla = 0


func _process(delta):
	if str($"/root/partida/Potenciadores/Guardar") == "[Object:null]":
		print ("No existe")
		pass
	else:
		$"/root/partida/Potenciadores/Guardar".connect("guardar", self, "_onGuardar")
		print ("ahora existe")
func _onGuardar():
	print ("guardar_____________________________________")
