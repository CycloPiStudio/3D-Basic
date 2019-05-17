extends MarginContainer

var viewport = null
var viewport_sprite = null
var modelo = null

func _ready():
	viewport = $"Viewport"
	viewport_sprite = $"ViewPortSprite"
	viewport_sprite.texture = viewport.get_texture()
	
#	$".".set_position(Vector2($"ViewPortSprite".texture.get_size().x , $"ViewPortSprite".texture.get_size().y))

#	modelo = $"HUD 3D/Viewport/modelo"
	pass

func _physics_process(delta):
	$"ViewPortSprite".texture.get_size().x
