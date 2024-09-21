extends CharacterBody2D


const SPEED = 300.0

@onready var _animated_sprite : AnimatedSprite2D = $AnimatedSprite2D

func _process(_delta):
	pass
	_animated_sprite.play("walk_right")
#	if Input.is_action_pressed("ui_right"):
#		_animated_sprite.play("walk_right")
#	elif Input.is_action_pressed("ui_left"):
#		_animated_sprite.play("walk_left")
#	elif Input.is_action_pressed("ui_up"):
#		_animated_sprite.play("walk_forward")
#	elif Input.is_action_pressed("ui_down"):
#		_animated_sprite.play("walk_back")
#	else:
#		_animated_sprite.stop()

		

func _physics_process( _delta: float) -> void:

	var horizontal := randf()
	var vertical := randf()
	
	if horizontal or vertical:
		velocity.x = horizontal * SPEED
		velocity.y = vertical * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
#	if horizontal > 0:
#		_animated_sprite.play("walk_right")
#	else :
#		_animated_sprite.play("walk_left")
		
#	if vertical > 0:
#		_animated_sprite.play("walk_back")
#	else :
#		_animated_sprite.play("walk_forward")

	move_and_slide()
