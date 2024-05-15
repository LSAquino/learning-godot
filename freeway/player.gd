extends Area2D


@export var speed = 100
var screen_size 
signal pontua

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("desce"):
		velocity.y += 1
	if Input.is_action_pressed("sobe"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
	position += velocity*delta
	
	position.y = clamp(position.y,0,screen_size.y)
	
	if velocity.y > 0:
		$AnimatedSprite2D.animation = "baixo"
	elif velocity.y < 0:
		$AnimatedSprite2D.animation = "cima"

func _on_body_entered(body):
	if body.name == "ganha":
		emit_signal("pontua")
	else:
		$AudioStreamPlayer2D.play()
	position.x = 320
	position.y = 696

func volta():
	position.x = 320
	position.y = 696









