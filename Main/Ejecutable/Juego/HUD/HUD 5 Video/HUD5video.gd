extends Node2D

# class member variables go here, for example:
# var a = 2
#  = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	print($".".get_children()[0].play())
	pass

func _process(delta):
	if $".".get_children()[0].is_playing() == false:
		print($".".get_children()[0].play())
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
