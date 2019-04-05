extends Spatial
onready var Arma = $Potenciador4arma

func _ready():
	pass

#func _process(delta):
#	pass

func _on_Timer_timeout():
	Arma.Disparo()
	print ("time out")
	pass 