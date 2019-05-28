extends Spatial

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		Global.guardar()
		get_tree().paused = true
		$Popup.show()
		
	pass


func _on_LineEdit_text_entered(new_text):
	Global.nombre_guardado = new_text
	get_tree().paused = false
	pass
