extends Spatial

onready var barraVida = $BarraVida/BarraVida
onready var vida 
onready var vidaMax = get_parent().vida

func _ready():

	pass 
	
func _process(delta):
	
	vida = float(get_parent().vida) / float(vidaMax)
	barraVida.set_scale(Vector3(vida,1,1))

	pass
