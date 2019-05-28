extends Spatial

var preGameOver = preload("res://Ejecutable/Menus/Win/Win.tscn").instance()
var Personaje1Muerto

#func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
#	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
#		print ("colision con player")
#		print(Global.nivel)
		if Global.nivel == "nivel1":
			Global.pantalla = 1
		if Global.nivel == "nivel2":
			Global.pantalla = 2
		if Global.nivel == "nivel3":
			Global.pantalla = 3
		if Global.nivel == "nivel4":
			Global.pantalla = 4
		
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		get_node("/root/Global Menus").add_child(preGameOver)
		$".".queue_free()
		get_tree().get_root() # Access via scene main loop.
		Personaje1Muerto = get_parent().get_parent().queue_free()
		pass # replace with function body
