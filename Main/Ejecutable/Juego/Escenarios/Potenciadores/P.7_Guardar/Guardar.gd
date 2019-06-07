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
	$Popup/Guardados.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	$"Popup/Guardados/Guardado 1/NombreGuardado1".set_text(Global.nombre_guardado1)
	$"Popup/Guardados/Guardado 2/NombreGuardado2".set_text(Global.nombre_guardado2)
	$"Popup/Guardados/Guardado 3/NombreGuardado3".set_text(Global.nombre_guardado3)
	$"Popup/Guardados/Guardado 4/NombreGuardado4".set_text(Global.nombre_guardado4)
	

# Ranura 1 de guardado___________________________________________
func _on_Guardado_1_pressed():
	$"Popup/Guardados/Guardado 1/Nombre1".show()
	$"Popup/Guardados/Guardado 1/NombreGuardado1".hide()
	$"Popup/Guardados/Guardado 1/Guardar1".show()
	$"Popup/Guardados/Guardado 2/Guardar2".hide()
	$"Popup/Guardados/Guardado 3/Guardar3".hide()
	$"Popup/Guardados/Guardado 4/Guardar4".hide()
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

# Ranura 2 de guardado___________________________________________
func _on_Guardado_2_pressed():
	$"Popup/Guardados/Guardado 2/Nombre2".show()
	$"Popup/Guardados/Guardado 2/NombreGuardado2".hide()
	$"Popup/Guardados/Guardado 1/Guardar1".hide()
	$"Popup/Guardados/Guardado 2/Guardar2".show()
	$"Popup/Guardados/Guardado 3/Guardar3".hide()
	$"Popup/Guardados/Guardado 4/Guardar4".hide()
	pass # replace with function body
func _on_Nombre2_text_changed(new_text):
	Global.nombre_guardado2 = new_text
	pass # replace with function body
func _on_Guardar2_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(Global.nombre_guardado2)
	$"Baul /Area/Timer".start()
	pass # replace with function body

# Ranura 3 de guardado___________________________________________
func _on_Guardado_3_pressed():
	$"Popup/Guardados/Guardado 3/Nombre3".show()
	$"Popup/Guardados/Guardado 3/NombreGuardado3".hide()
	$"Popup/Guardados/Guardado 1/Guardar1".hide()
	$"Popup/Guardados/Guardado 2/Guardar2".hide()
	$"Popup/Guardados/Guardado 3/Guardar3".show()
	$"Popup/Guardados/Guardado 4/Guardar4".hide()
	pass # replace with function body
func _on_Nombre3_text_changed(new_text):
	Global.nombre_guardado3 = new_text
	pass # replace with function body
func _on_Guardar3_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(Global.nombre_guardado3)
	$"Baul /Area/Timer".start()
	pass # replace with function body

# Ranura 4 de guardado___________________________________________
func _on_Guardado_4_pressed():
	$"Popup/Guardados/Guardado 4/Nombre4".show()
	$"Popup/Guardados/Guardado 4/NombreGuardado4".hide()
	$"Popup/Guardados/Guardado 1/Guardar1".hide()
	$"Popup/Guardados/Guardado 2/Guardar2".hide()
	$"Popup/Guardados/Guardado 3/Guardar3".hide()
	$"Popup/Guardados/Guardado 4/Guardar4".show()
	pass # replace with function body
func _on_Nombre4_text_changed(new_text):
	Global.nombre_guardado4 = new_text
	pass # replace with function body
func _on_Guardar4_pressed():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$Popup.hide()
	tiempo = true
	Global.guardar(Global.nombre_guardado4)
	$"Baul /Area/Timer".start()
	pass # replace with function body
