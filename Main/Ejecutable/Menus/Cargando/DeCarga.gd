extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var PreSiguientePantalla = preload("res://Ejecutable/Menus/Select Personaje/SelectPersonaje.tscn").instance()
onready var PrePantalla2 = preload("res://Ejecutable/Juego/Escenarios/Niveles2D/Nivel_2/Nivel_2.tscn").instance()
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
#
#
func _on_Timer_timeout():
	if Global.nivel2D == 2:
		get_node("/root/Global Menus").add_child(PrePantalla2)
	#	get_node("Musica Menus").play()
		$".".queue_free()
	if Global.nivel2D == 3:
		get_node("/root/Global Menus").add_child(PreSiguientePantalla)
	#	get_node("Musica Menus").play()
		$".".queue_free()
		pass # Replace with function body.
