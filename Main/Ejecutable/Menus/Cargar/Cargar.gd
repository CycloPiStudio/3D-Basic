extends Node



func _ready():
	pass 


func _on_LineEdit_text_changed(new_text):
	Global.nombre_guardado = new_text
	pass 


func _on_Cargar_pressed():
	Global.cargar(Global.nombre_guardado)
	pass # replace with function body
