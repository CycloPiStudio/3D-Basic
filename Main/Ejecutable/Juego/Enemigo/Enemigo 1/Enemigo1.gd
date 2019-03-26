extends Spatial

export(NodePath) var PlayerPath  = "" #You must specify this in the inspector!
export(float) var MovementSpeed = 11
export(float) var Acceleration = 3
export(float) var MaxJump = 10
export(float) var MouseSensitivity = 2
export(float) var RotationLimit = 45
export(float) var MaxZoom = 0.5
export(float) var MinZoom = 1.5
export(float) var ZoomSpeed = 2

var Player
var InnerGimbal
var Direction = Vector3()
var Rotation = Vector2()
var gravity = -10
var Movement = Vector3()
var ZoomFactor = 1
var ActualZoom = 1
var Speed = Vector3()
var CurrentVerticalSpeed = Vector3()
var JumpAcceleration = 3
var IsAirborne = false

var paseo = 0
var topepaseo = 11

func _ready():
	Player = get_node("KinematicBody")
	InnerGimbal =  $InnerGimbal
	pass


func _physics_process(delta):
	
	#Dando caña
	if paseo <= topepaseo:
		Direction.x -= 1
		Direction.x = clamp(Direction.x, -1,1)
		paseo += 1
	elif paseo <= 2*topepaseo:
		Direction.z -= 0.5
		Direction.z = clamp(Direction.z, -1,1)
		paseo += 1
	elif paseo <= 3*topepaseo:
		Direction.x += 0.5
		Direction.x = clamp(Direction.x, -1,1)
		paseo += 1
	elif paseo <= 4*topepaseo:
		Direction.z += 0.5
		Direction.z = clamp(Direction.z, -1,1)
		paseo += 1
	elif paseo <= 5*topepaseo:
		paseo = 0
	
	#Movement
	var MaxSpeed = MovementSpeed *Direction.normalized()
	Speed = Speed.linear_interpolate(MaxSpeed, delta * Acceleration)
	Movement = Player.transform.basis * (Speed)
	CurrentVerticalSpeed.y += gravity * delta * JumpAcceleration
	Movement += CurrentVerticalSpeed
	Player.move_and_slide(Movement,Vector3(0,1,0))
	
	if Player.is_on_floor() :
		CurrentVerticalSpeed.y = 0
		IsAirborne = false
