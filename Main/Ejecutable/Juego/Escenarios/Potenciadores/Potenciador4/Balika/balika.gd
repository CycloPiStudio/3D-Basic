extends RigidBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#print(get_parent().get_name())
	#print(get_parent().get_global_transform().basis)
	#print($".".get_global_transform().basis[0]*20)

	apply_impulse(Vector3(0,0,0), $".".get_global_transform().basis[0]*20)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
