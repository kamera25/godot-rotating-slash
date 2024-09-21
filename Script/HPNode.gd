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
	
	await get_tree().create_timer(1).timeout


# HPを完全回復
func cure() -> void:
	_hp = MAX_HP
	change_hp.emit( _hp )

# HPを1減らす
func decrease() -> void:
	_hp -= 1
	change_hp.emit( _hp )
	
