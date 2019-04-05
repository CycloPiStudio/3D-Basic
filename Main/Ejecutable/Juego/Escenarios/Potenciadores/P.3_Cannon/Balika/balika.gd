extends RigidBody


func _ready():

#	print(get_parent().get_name())
#	print(get_parent().get_global_transform().basis)
#	print($".".get_global_transform().basis[0]*20)

	apply_impulse(Vector3(0,0,0), $".".get_global_transform().basis[0]*20)
	pass

#func _process(delta):
#	pass
