extends Node


var nombre_guardado = 0
var personaje = 0
var RutaPersonajeSelect = 0
var nivel = 0
var RutaNivelSelect = 0
var vida = 0
var puntos = 0
var arma = 0


var datos_partida = {
puntos = 0,
arma = 0,
nivel = 0,
RutaNivelSelect = 0,
vida = 0,
RutaPersonajeSelect = 0
}

func _process(delta):
#	print (RutaNivelSelect)
	pass
	
func _ready():
	var rutaGuardar = Directory.new()
	if !rutaGuardar.dir_exists("user://game_saves"):
		rutaGuardar.open("user://")
		rutaGuardar.make_dir("user://game_saves")
	
func guardar(nombre_guardado):
	var save = File.new()
	var sav = File.new()
	save.open("user://game_saves/" + str(nombre_guardado) + ".sav", File.WRITE)
	
	var datos_guardar = datos_partida
	datos_guardar.puntos = puntos
	datos_guardar.arma = arma
	datos_guardar.nivel = nivel
	datos_guardar.RutaNivelSelect = RutaNivelSelect
	datos_guardar.vida = vida
	datos_guardar.RutaPersonajeSelect = RutaPersonajeSelect
	
	save.store_line(to_json(datos_guardar))
	save.close()
	print("guarda")
	pass
	
func cargar(nombre_guardado):
#	Crea el directorio sobre el que guardar
	var cargar = File.new()
	if !cargar.file_exists("user://game_saves/" + str(nombre_guardado) + ".sav"):
		print ("No hay partidas guardadas")
		return	
	cargar.open("user://game_saves/" + str(nombre_guardado) + ".sav", File.READ)
	
#	Comprueba las variables a cargar y las carga
	var datos_cargar = datos_partida
	if !cargar.eof_reached():
		var dato_previsto = parse_json(cargar.get_line())
		if dato_previsto != null:
			datos_cargar = dato_previsto
	cargar.close()
			
	puntos = datos_cargar.puntos 
	arma = datos_cargar.arma
	nivel = datos_cargar.nivel
	RutaNivelSelect = datos_cargar.RutaNivelSelect
	vida = datos_cargar.vida
	RutaPersonajeSelect = datos_cargar.RutaPersonajeSelect
	
#	monta la partida cargada
	cargarNivel(RutaNivelSelect)
	cargarPlayer(RutaPersonajeSelect)
	$"/root/Global Menus/Cargar".queue_free()
	
	print ("cargar partida")
	
func cargarPlayer(RutaPersonajeSelect):
	personaje = load(RutaPersonajeSelect).instance()
	personaje.set_name("personaje")
	print ("carga player")
	
var partida	
func cargarNivel(RutaNivelSelect):
	partida = load(str(RutaNivelSelect)).instance()
	RutaNivelSelect = partida.get_name()
	personaje = load(str(RutaPersonajeSelect)).instance()
	personaje.set_name("personaje")
	partida.set_name("partida")
	partida.get_node("PosicionSalida").add_child(personaje)
	get_parent().add_child(partida)
#	print (Global.personaje.get_path())
	get_parent().get_node("Global Menus/Musica Menus/").stop()
	pass
		
