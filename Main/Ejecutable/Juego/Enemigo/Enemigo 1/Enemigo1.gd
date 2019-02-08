extends Node2D

onready var pos = $"Personaje".position
var punto
var velocidad = 200

func _ready():

	set_process(true)
	punto = Vector2($"Personaje".position.x,$"Personaje".position.x + 100)
	pass

func _process(delta):
	if Input.is_action_pressed("ui_up"):
		pos.y -= velocidad * delta
		punto.y = pos.y - 2*velocidad
	if Input.is_action_pressed("ui_down"):
		pos.y += velocidad * delta
		punto.y = pos.y + 2 * velocidad
	if Input.is_action_pressed("ui_right"):
		pos.x += velocidad * delta
		punto.x += pos.x + 2 * velocidad
	if Input.is_action_pressed("ui_left"):
		pos.x -= velocidad * delta
		punto.x = pos.x - 2 * velocidad
		
		
	#set_position(Vector2(pos)  )
	#	orientacion, vale así?
	look_at(Vector2(punto))
	print ( delta)
	pass
	
	
	
#	pero to esto que es ¡¡¡¡¡¡¡
# 

#	var velocity = Vector2() # The player's movement vector.
#	if Input.is_action_pressed("ui_right"):
#        velocity.x += 1
#	if Input.is_action_pressed("ui_left"):
#        velocity.x -= 1
#	if Input.is_action_pressed("ui_down"):
#        velocity.y += 1
#	if Input.is_action_pressed("ui_up"):
#        velocity.y -= 1
#	if velocity.length() > 0:
#        velocity = velocity.normalized() * velocidad
#	set_position(Vector2(velocity))
#        $".".play()
#	else:
#        $".".stop()
