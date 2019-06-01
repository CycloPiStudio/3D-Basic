extends Spatial

var tiempo = false

func _on_Area_body_entered(body):
	if tiempo == false:
		if body.is_in_group("Player"):
			$Popup.show()
#			_on_LineEdit_text_entered(Global.nombre_guardado)
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_tree().paused = true

func _on_1_pressed():
	Global.nombre_guardado = 1

func _on_Restaurar_partida_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(Global.nombre_guardado)
	$"Baul /Area/Timer".start()

func _on_Timer_timeout():
	tiempo = false

func _on_LineEdit_text_changed(new_text):
	Global.nombre_guardado = new_text
	
