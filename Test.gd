extends TextureRect

var mouse_position = Vector2.ZERO

func _ready():
	print("Function _ready called")	   
	print("Viewport Resolution is: ", get_viewport_rect().size)
	
func _process(_delta):
	mouse_position = get_global_mouse_position()/get_viewport_rect().size	
	material.set_shader_param("u_mousePos", mouse_position)
