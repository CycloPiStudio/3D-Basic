extends Spatial
var argumento = null
var tiempo = false

func _on_Area_body_entered(body):
	if tiempo == false:
		if body.is_in_group("Player"):
			$Popup.show()
			_on_LineEdit_text_entered(argumento)
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_tree().paused = true
		
		
	pass


func _on_LineEdit_text_entered(new_text):
	argumento = new_text
	Global.nombre_guardado = new_text
	get_tree().paused = false
	pass




func _process(delta):
#	print("argumento: " + str(argumento))
#	print ("tiempo: " + str(tiempo))
	pass

func _on_1_pressed():
	print(1)
	argumento = 1

func _on_Restaurar_partida_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(argumento)
	$"Baul /Area/Timer".start()



func _on_Timer_timeout():
	tiempo = false

	
