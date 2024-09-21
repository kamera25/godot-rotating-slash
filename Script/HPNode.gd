# HPNode.gd
# HPの値を保管 および 値の操作を行うノード
extends Node

class_name HPNode

const MAX_HP : int = 3
var _hp : int = MAX_HP

signal change_hp( hp : int )

# HPの値が変更となった時に呼び出す
func change( hit_point : int ) -> void:
	change_hp.emit( _hp )

# Debug
func _ready() -> void:
	_decrease()
	_decrease()
	_decrease()


# HPを1減らす
func _decrease() -> void:
	_hp -= 1
	change_hp.emit( _hp )
	
