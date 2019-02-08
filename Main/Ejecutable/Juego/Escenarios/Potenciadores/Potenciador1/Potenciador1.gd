extends Node2D

var prePuntosP1 = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
var PuntosP1
var SumaVida = 100

var tiempoEntra = 20

var banderaVisible = false
var VeloNum =100
var contColor
var posicion

func _ready():
	posicion = $".".get_position()


func _process(delta):

	if banderaVisible:
		#esto pa mover el numeriko
		PuntosP1.set_position(Vector2(PuntosP1.get_position().x , PuntosP1.get_position().y+VeloNum*delta))
		contColor = contColor + delta
		# esto pal máximo de color llevar cuidao
		if contColor >= 1:
			contColor = 1
			
		PuntosP1.set("custom_colors/font_color",Color(0.5,0,contColor))
	
	else:
		contColor = delta
		
	if OS.get_ticks_msec() - tiempoEntra  > 2000 and banderaVisible:
		$".".queue_free()
		print("mato potenciador 1")
	pass


func _on_Area2D_body_entered(body):
	
	print(get_node("AudioPotenciador").play())
	Global.puntos += SumaVida
	print("entra en el potenciador 1")
	add_child(prePuntosP1)
	tiempoEntra = OS.get_ticks_msec()
	PuntosP1 =get_node("Datos_comunes/Label_datos_comunes")	
#	PuntosP1 =get_node("/root/partida/Potenciador1/Datos_comunes/Label_datos_comunes")	
	PuntosP1.set_position(posicion)#	GraficaVida.set_text("Aquí pondré la vida actualizada")
	PuntosP1.set_text(""+ str(SumaVida) + " puntos")
	PuntosP1.set("custom_colors/font_color",Color(1,0,0))
	print($".".set_position(Vector2(-300,-300)))
	# error: como solo se "esconde" puedes entrar varia veces
	# error: solucion mover fuera de la pantalla
#	$".".hide()
	banderaVisible = true
	


	pass 
