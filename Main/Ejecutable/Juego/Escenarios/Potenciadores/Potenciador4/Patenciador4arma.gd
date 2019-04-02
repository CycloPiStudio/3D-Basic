extends Spatial

# class member variables go here, for example:
# var a = 2
var bala = preload("res://Ejecutable/Juego/Escenarios/Potenciadores/Potenciador4/Balika/balika.tscn")
onready var posicion = $Position3D
#func _ready():
#	# Called when the node is added to the scene for the first time.
#	# Initialization here
#	pass
func _process(delta):
	if Input.is_action_pressed("disparar"):
		var node = bala.instance()
		add_child(node)
