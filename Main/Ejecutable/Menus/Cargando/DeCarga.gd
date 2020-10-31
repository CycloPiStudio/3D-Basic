extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var PreSiguientePantalla = preload("res://Ejecutable/Menus/Select Niveles/SelectNiveles.tscn").instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_node("/root/Global Menus").add_child(PreSiguientePantalla)
	get_parent().get_node("Musica Menus").play()
	$".".queue_free()
	pass # Replace with function body.
