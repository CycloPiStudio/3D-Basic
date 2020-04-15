#extends WorldEnvironment
#
#var rojo = 1 
#var verde = 1
#var azul = 1
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
#
#func disminuyeIntensidadLuz():
#	print("disminuye luz")
#	if rojo > 0:
#		rojo -= 0.1
#		verde -= 0.1
#		azul -= 0.1
#	else:
#		rojo = 0
#		verde = 0
#		azul = 0
#	get_node(".").get_environment().set_bg_energy(rojo * 7)
#	get_node(".").get_environment().set_ambient_light_color(Color(rojo,verde,azul))
#	pass