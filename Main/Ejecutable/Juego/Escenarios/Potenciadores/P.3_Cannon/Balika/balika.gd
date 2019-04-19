extends RigidBody

var preNoMensa = preload("res://Ejecutable/Juego/HUD/HUD 8 Mensaje/Hud_mensaje_info.tscn").instance()
var NoMensa 
#func _ready():
#	pass

#func _process(delta):
#	pass


func _on_VisibilityNotifier_screen_exited():
	queue_free()
	pass # replace with function body

func _on_Timer_timeout():
	queue_free()
	pass # replace with function body

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
			# función pa sacar mensaje
			
			get_parent().get_parent().get_parent().add_child(preNoMensa)
			NoMensa = get_node("/root/Hud_mensaje_info")
			NoMensa.mostra_mensa("Impacto de "+str($".".get_name()))
			
			print("yo por mi juego: mato")
			print("hay que hacer una función de matar")
			print("Impacto de la bala en el player")
			print($".".get_name())
			queue_free()
	pass # replace with function body
