extends Control

func _ready() -> void:
	pass

func _process(delta):
	for button in get_tree().get_nodes_in_group("button"):
		button.connect("pressed", Callable(self,"_on_Button_pressed").bind(button))
		button.connect("mouse_exited", Callable(self,"mouse_interaction").bind(button))
		button.connect("mouse_entered", Callable(self,"mouse_interaction").bind(button))
		

func mouse_interaction(buttom: Button, state: String) -> void:
	match state:
		"exited":
			buttom.modulate.a = 1.0
			
		"exited":
			buttom.modulate.a = 0.5

func _on_play_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

func _on_quit_pressed():
	get_tree().quit()
