extends Spatial

# class member variables go here, for example:
# var a = 2
onready var espada = $".".get_node("Area")
onready var NodoEsqueleto = get_node("/root/partida/PosicionSalida/personaje/Googlin/Armature/Skeleton")
var cogida = false
var contAP = 0 # contador animación parado
const TopeContAP = 40
var posi
var hueso = 4

func _ready():
#	print("Arma (espada) sobre el terreno, en:", espada.get_global_transform()[3])
#	print("Arbol:", get_node("/root/partida/PosicionSalida/personaje/Googlin/Armature/Skeleton/Cube"))
	pass

func _process(delta):
	
	if cogida:
		posi[0] = NodoEsqueleto.get_global_transform()[0]+ NodoEsqueleto.get_bone_pose(hueso)[0]
		posi[1] = NodoEsqueleto.get_global_transform()[1]+ NodoEsqueleto.get_bone_pose(hueso)[1]
		posi[2] = NodoEsqueleto.get_global_transform()[2]+ NodoEsqueleto.get_bone_pose(hueso)[2]
		posi[3] = NodoEsqueleto.get_global_transform()[3]+ NodoEsqueleto.get_bone_pose(hueso)[3]
	
#		posi[3] = NodoEsqueleto.get_global_transform()[3]+ Vector3(NodoEsqueleto.get_bone_pose(hueso)[3].x+0.1,NodoEsqueleto.get_bone_pose(hueso)[3].y, NodoEsqueleto.get_bone_pose(hueso)[3].z+0.2)
		set_global_transform(posi)
#		print(NodoEsqueleto.get_bone_pose(hueso)[3])
#		NodoEsqueleto.get_bone_pose(hueso)[1]
#		set_transform(NodoEsqueleto.get_bone_pose(hueso)[0],NodoEsqueleto.get_bone_pose(hueso)[1],NodoEsqueleto.get_bone_pose(hueso)[2],NodoEsqueleto.get_bone_pose(hueso)[3])
#		set_transform(NodoEsqueleto.get_bone_pose (3)[1],NodoEsqueleto.get_bone_pose (3)[2],NodoEsqueleto.get_bone_pose (3)[3],Vector3(0,0,0))
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
#		print("Coge espada sobre el terreno, en:", espada.get_global_transform()[3])
		print ("aqui entramos")
#		print("Esqueleto sobre el terreno, en:", NodoEsqueleto.get_global_transform()[3])
		
		cogida = true
	pass # replace with function body
