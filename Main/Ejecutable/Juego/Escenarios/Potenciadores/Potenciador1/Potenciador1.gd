extends Spatial

# class member variables go here, for example:
# var a = 2
onready var espada = $".".get_node("Area")
onready var NodoEsqueleto = get_node("/root/partida/PosicionSalida/personaje/Googlin/Armature/Skeleton")
var cogida = false
var contAP = 0 # contador animación parado
const TopeContAP = 40
var posi

func _ready():
#	print("Arma (espada) sobre el terreno, en:", espada.get_global_transform()[3])
#	print("Arbol:", get_node("/root/partida/PosicionSalida/personaje/Googlin/Armature/Skeleton/Cube"))
	pass

func _process(delta):
	
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if cogida:
		posi = NodoEsqueleto.get_global_transform()
		set_global_transform(posi)
		print("aqui")
	else:
		if contAP < TopeContAP :
			posi = espada.get_global_transform()
			posi[3].x +=1*delta
			set_global_transform(posi)
			contAP +=1
		elif contAP < 2*TopeContAP:
			posi = espada.get_global_transform()
#			print(posi[3])
			posi[3].x -=1*delta
			set_global_transform(posi)
			contAP +=1
		else:
			contAP = 0
			


func _on_Area_body_entered(body):
	if body.is_in_group("Player"):
		print("Coge espada sobre el terreno, en:", espada.get_global_transform()[3])
		print ("aqui entramos")
		print("Esqueleto sobre el terreno, en:", NodoEsqueleto.get_global_transform()[3])
		
		cogida = true
	pass # replace with function body
