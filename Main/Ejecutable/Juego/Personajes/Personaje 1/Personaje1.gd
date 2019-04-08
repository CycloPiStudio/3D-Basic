extends KinematicBody

var vida 

func _ready():
	vida = Global.vida
	pass

func _process(delta):
	vida = Global.vida
#	print (vida)
	pass
