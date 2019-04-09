extends RigidBody


func _ready():

#	print(get_parent().get_name())
#	print(get_parent().get_global_transform().basis)
#	print($".".get_global_transform().basis[0]*20)

	apply_impulse(Vector3(0,0,0), $".".get_global_transform().basis[0]*20)
	pass

#func _process(delta):
#	pass


func _on_VisibilityNotifier_screen_exited():
	queue_free()
	pass # replace with function body

func _on_Timer_timeout():
	queue_free()
	pass # replace with function body
