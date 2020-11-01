
##############
extends KinematicBody2D

onready var sprite : AnimatedSprite = $AnimatedSprite
#onready var animation_player : AnimationPlayer = $AnimationPlayer
#onready var audio_player : AudioStreamPlayer = $AudioStreamPlayer2D
export var snap := false
export var move_speed := 240
export var jump_force := 200
export var gravity := 300
export var slope_slide_threshold := 50.0
#var vidas_personaje = 3
var velocity := Vector2()
#var conesion_anima_fin

var left = -0.5
var right = 0.5
var direction_x = right

#Cyclo Pi variables
var bandera_boton_pulsao = false

onready var GameOver2D = preload("res://Ejecutable/Menus/Game Over/GameOver.tscn").instance()
#res://Ejecutable/Menus/Game Over/GameOver.tscn
#on_ready var gameover = preload("res://Menus/GameOver/GameOver.tscn")
var bandera_muerto = false
var bandera_sonido_pasos = true


func _physics_process(delta: float) -> void:
	
	if bandera_muerto == false:
		
	
#	avance
		velocity.x = direction_x * move_speed
	
	#	game over por límite inferior, esto hay que cambiarlo por game over por areas
		if position.y > 170:
#			print(position.y)
			morir()	
		
	#	salto y gravedad	
		if not is_on_floor():
			snap = false
		if Input.is_action_just_pressed("ui_up") and snap:
			salto()
	#		audio_player.play()
	
	
		velocity.y += gravity * delta
	
		var snap_vector = Vector2(0,32) if snap else Vector2()
		velocity = move_and_slide_with_snap(velocity,snap_vector, Vector2.UP, slope_slide_threshold)
	
	#	if is_on_floor() and (Input.is_action_just_released("move_right") or Input.is_action_just_released("move_left")):
	#		velocity.y = 0
		if is_on_wall():
			if direction_x == left:
				direction_x = right
				if Input.is_action_pressed("ui_up") or bandera_boton_pulsao:
					salto()
					
			elif direction_x == right:
				direction_x = left

				if Input.is_action_pressed("ui_up") or bandera_boton_pulsao:
					salto()
					
		var acaba_aterizar := is_on_floor() and not snap
		if acaba_aterizar:
			snap = true
			bandera_sonido_pasos = true
		
		update_animation(velocity)

func update_animation(velocity: Vector2) -> void:
	var animation := "caminar"
	
	if abs(velocity.x) > 10.0:
#		
		sprite.flip_h = velocity.x < 0
		animation = "caminar"
		if bandera_sonido_pasos:
			bandera_sonido_pasos = false
			get_node("AudioPasos").play()
			

	if not is_on_floor():
		animation = "saltar" if velocity.y < 0 else "caer"
		
	if sprite.animation != animation:
		sprite.play(animation)


func _on_TextureButton_pressed():
	bandera_boton_pulsao = false
	
func _on_TextureButton_button_down():
	bandera_boton_pulsao = true
	if snap :
		salto()
	
func salto():
	snap = false
	velocity.y = -jump_force
	get_node("AudioSalto").play()


func _on_AudioPasos_finished():
	if snap :
		bandera_sonido_pasos = true
	pass # Replace with function body.
	
func morir():
	bandera_muerto = true
	print("morir2")
	get_node("/root/Global Menus").add_child(GameOver2D)
	get_parent().queue_free()
#	get_parent().get_node("Musica Menus").play()
#	$".".queue_free()
#	Global.puntuacion = 0
	
#	quitar_vida()
#	print("game over por límite inferior, esto hay que cambiarlo por game over por areas")

#	gameover.set_position(get_position())
#	Global_cambiar_nivel.goto_scene("res://Menus/GameOver/GameOver.tscn")
	pass
#
#func quitar_vida():
#	if Global.vidas > 1:
#		Global.vidas -= 1
##		Global_cambiar_nivel.wait_frames = 20
#		Global_cambiar_nivel.goto_scene(get_parent().filename)
#	elif Global.vidas <= 1 :
#		Global.vidas -= 1
##		Global_cambiar_nivel.wait_frames = 0
##		Global_cambiar_nivel.goto_scene("res://Menus/GameOver/GameOver.tscn")
#		get_parent().add_child(gameover)
##		add_child(gameover)
