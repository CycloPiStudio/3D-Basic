extends Spatial
onready var Arma = $P3_Cannon
var posEnemigo = get_global_transform()
#var rotEnemigo = rotate_object_local()
func _ready():
	
	pass

func _process(delta):
	rotate_object_local(Vector3(0, 1, 0), PI/300)
	
	pass

func _on_Timer_timeout():
	Arma.Disparo()
#	print ("time out")
	pass 