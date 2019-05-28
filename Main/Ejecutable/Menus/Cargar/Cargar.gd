extends Node

var argumento = null

func _ready():
	pass 

func _on_Button_pressed():
	Global.cargar(argumento)
	pass 


func _on_LineEdit_text_changed(new_text):
	argumento = new_text
	pass 
