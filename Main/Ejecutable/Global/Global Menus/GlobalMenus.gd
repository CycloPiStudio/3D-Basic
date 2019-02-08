extends Node

var MenuPrin = preload("res://Ejecutable/Menus/Menu Principal/MenuPrincipal.tscn")
var MenuPrincipal = MenuPrin.instance()



func _ready():
	$".".add_child(MenuPrincipal)	
#	print (root_node."Global Menus")
#	print (get_tree().get_root().$"Global Menus".name)
#	print($"/root/GlobalMenus".name)
#	$"Musica Menus".play()
	$"Musica Menus".play()
	
#	"Global Menus").add_child()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
