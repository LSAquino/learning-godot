extends RigidBody2D

func _ready():
	var cordocarro = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.animation = cordocarro[randi() % cordocarro.size()]


func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()



