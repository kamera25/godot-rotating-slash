# HeartMpde.gd
# 回復アイテムのハートの振る舞いを記述
extends Area2D

class_name Heart

signal pick_up()


func _ready() -> void:
	self.area_entered.connect( Callable( self, "_hit_collision" ))

# 他のArea2Dと当たった時の処理
func _hit_collision( area : Area2D) -> void:
	if area.is_in_group("Player"):
		pick_up.emit()
		queue_free()
