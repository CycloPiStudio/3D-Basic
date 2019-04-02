extends Control

var vida
var poseedorVida 		#Esta variable es para el personaje, enemigo u objeto al que le vamos a aplicar la vida
var barraVida

func _ready():
	barraVida = $TextureProgress
	poseedorVida = get_parent().get_node() #Tenemos que conseguir el nodo que tiene la vida
	barraVida.set_position(Vector2(0,0)) #Coloca la barra de vida (Para 2D, Para 3D no se si funcina??)
	set_bar_vida()
	pass

func _process(delta):
	barraVida.value = poseedorVida.vida 
	pass

func set_bar_vida():
	baraVida.max_value = poseedorVida.vida 
	baraVida.min_value = 0
	baraVida.value = poseedorVida.vida 