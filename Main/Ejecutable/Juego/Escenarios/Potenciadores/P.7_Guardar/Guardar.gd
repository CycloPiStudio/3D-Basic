extends Spatial

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		Global.guardar = true
		Global.guardar()
	pass
