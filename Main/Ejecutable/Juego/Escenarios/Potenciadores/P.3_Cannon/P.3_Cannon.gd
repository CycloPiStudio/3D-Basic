extends Spatial

var bala = preload("res://Ejecutable/Juego/Escenarios/Potenciadores/P.3_Cannon/Balika/balika.tscn")
onready var posicion = $Position3D
var cont = 0
var topecont = 100
var posPoseedorCannon

func _ready():
	posPoseedorCannon = (get_parent().get_global_transform())
#	# Called when the node is added to the scene for the first time.
#	# Initialization here
#	pass

#func _process(delta):
#	if Input.is_action_pressed("disparar") and cont <= topecont:
#		var node = bala.instance()
#
#		get_parent().add_child(node)
#		rotate_y(0.01)
#		cont += 1
#	elif Input.is_action_pressed("disparar") and cont <= 2*topecont:
#		var node = bala.instance()
#		add_child(node)
#		rotate_y(-0.01)
#		cont += 1
#	else:
#		cont = 0
func Disparo():
	var node = bala.instance()
	get_parent().get_parent().add_child(node)
	node.set_global_transform(posPoseedorCannon)
#	print (get_parent().name)
