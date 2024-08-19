extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta):
	
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("walk_right")
	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play("walk_left")
	elif Input.is_action_pressed("ui_up"):
		_animated_sprite.play("walk_forward")
	elif Input.is_action_pressed("ui_down"):
		_animated_sprite.play("walk_back")
	else:
		_animated_sprite.stop()
		

func _physics_process(delta: float) -> void:

	var horizontal := Input.get_axis("ui_left", "ui_right")
	var vertical := Input.get_axis("ui_up", "ui_down")
	if horizontal or vertical:
		velocity.x = horizontal * SPEED
		velocity.y = vertical * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
