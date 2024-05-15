extends Control

func _ready() -> void:
	pass
#		button.connect("mouse_exited", mouse_interaction (button))
#		button.connect("mouse_entered", mouse_interaction (button))
		
		
func _process(delta):
	for button in get_tree().get_nodes_in_group("button"):
		button.connect("pressed", Callable(self,"_on_Button_pressed").bind(button))
		
func _on_button_pressed(buttom: Button):
	match buttom.name:
		"Play":
			var _game: bool = get_tree().change_scene_to_file("res://main.tscn")
			
		"Quit":
			get_tree().quit()
	
func mouse_interaction(buttom: Button, state: String) -> void:
	match state:
		"exited":
			buttom.modulate.a = 1.0
			
		"exited":
			buttom.modulate.a = 0.5
