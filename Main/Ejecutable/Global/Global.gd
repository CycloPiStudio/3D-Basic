extends Node

var personaje = 0
var RutaPersonajeSelect = 0
var nivel = 0
var vida = 0
var puntos = 0
var arma = 0
var pantalla = 0

var datos_partida = {
puntos = 0,
arma = 0,
pantalla = 0,
nivel = 0,
vida = 0
}

func _ready():
	var rutaGuardar = Directory.new()
	if !rutaGuardar.dir_exists("user://game_saves"):
		rutaGuardar.open("user://")
		rutaGuardar.make_dir("user://game_saves")
		



func guardar(var numero):
	var save = File.new()
	save.open("user://game_save" + String(numero) + ".sav", File.WRITE)
	
	var datos_guardar = datos_partida
	datos_guardar.puntos = puntos
	datos_guardar.arma = arma
	datos_guardar.pantalla = pantalla
	datos_guardar.nivel = nivel
	datos_guardar.vida = vida
	
	save.store_line(to_json(datos_guardar))
	save.close()
	print("guarda")
	pass
	
func cargar(var numero):
	var cargar = File.new()
	if !cargar.file_exists("user://game_saves" + String(numero) + ".sav"):
		print ("No hay partidas guardadas")
		return	
	cargar.open("user://game_saves" + String(numero) + ".sav", File.READ)
	
	var datos_cargar = datos_partida
	
	if !cargar.eof_reached():
		var dato_previsto = parse_json(cargar.get_line())
		if dato_previsto != null:
			datos_cargar = dato_previsto
	cargar.close()
			
	puntos = datos_cargar.puntos 
	arma = datos_cargar.arma
	pantalla = datos_cargar.pantalla
	nivel = datos_cargar.nivel
	vida = datos_cargar.vida
	
	print ("cargar partida")
	pass
		
