extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var Node_mensa
var mensaText

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	print("esto carga")
	
	
#	print(Node_mensa)
#	$".".set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
#	$".".set_position(Vector2(600,600))
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


#func _on_Timer_timeout():
#	print("esto que que que")
#	queue_free()
#	pass # replace with function body


func _on_Timer_timeout():
	print("esto que que que")
	queue_free()
	pass # replace with function body

func mostra_mensa(Mensa_tex):
	Node_mensa = get_node("Mensaje")
	Node_mensa.set_position(Vector2(get_viewport().size.x/8 , get_viewport().size.y/8))
	Node_mensa.set_text(Mensa_tex)
