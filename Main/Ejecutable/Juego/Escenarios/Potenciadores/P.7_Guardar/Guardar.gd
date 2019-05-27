extends Spatial

signal guardar

func _ready():
	pass 


func _on_Area_body_entered(body):
	emit_signal("guardar")
	pass
