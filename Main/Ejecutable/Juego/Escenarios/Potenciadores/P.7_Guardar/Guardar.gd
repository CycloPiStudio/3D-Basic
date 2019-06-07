extends Spatial

var tiempo = false

func _on_Area_body_entered(body):
	if tiempo == false:
		if body.is_in_group("Player"):
			$Popup.show()
#			_on_LineEdit_text_entered(Global.nombre_guardado)
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_tree().paused = true



func _on_Restaurar_partida_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	$"Baul /Area/Timer".start()

func _on_Timer_timeout():
	tiempo = false

func _ready():
	$"Popup/Guardado 1/NombreGuardado1".set_text(Global.nombre_guardado1)
	

# Ranura 1 de guardado___________________________________________


func _on_Guardado_1_pressed():
	$"Popup/Guardado 1/Nombre1".show()
	$"Popup/Guardado 1/NombreGuardado1".hide()
	pass

func _on_Nombre1_text_changed(new_text):
	Global.nombre_guardado1 = new_text
	pass
	
func _on_Guardar1_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(Global.nombre_guardado1)
	$"Baul /Area/Timer".start()
	pass	