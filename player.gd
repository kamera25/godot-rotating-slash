extends Area2D

# Player.gd
# プレイヤーの振る舞いを記述する
signal hit

func _hit_enemy() -> void:
	hit.emit()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
