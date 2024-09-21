extends CharacterBody2D


const SPEED = 300.0

@onready var _animated_sprite : AnimatedSprite2D = $AnimatedSprite2D
var _direction : Vector2


func _ready() -> void:
	
	_direction.y = 0.1
	
	# 1秒毎に移動の向きを変える処理
	var timer = Timer.new()
	timer.timeout.connect( Callable(self, "_set_move_direction"))
	timer.one_shot = false
	add_child(timer)
	timer.start(1)
	
	

func _process(_delta) -> void:	
	# キャラクターの向きに応じて、アニメーションを変更する
	var is_move_horizontal : bool = absf( _direction.x ) > absf( _direction.y )
	
	if is_move_horizontal:
		if _direction.x > 0:
			_animated_sprite.play("walk_right")
		else :
			_animated_sprite.play("walk_left")
	else:
		if _direction.y > 0:
			_animated_sprite.play("walk_back")
		else :
			_animated_sprite.play("walk_forward")
	

# 移動する向きをメンバ変数に代入する
func _set_move_direction() -> void:
	_direction = _get_random_direction()
	
	
func _get_random_direction() -> Vector2:
	var direction : Vector2
	direction.x = randf() * 2.0 - 1.0
	direction.y = randf() * 2.0 - 1.0
	
	return direction


func _physics_process( _delta: float) -> void:
	velocity.x = _direction.x * SPEED
	velocity.y = _direction.y * SPEED
		
	move_and_slide()
