extends Node

class_name HPEntityNode

const MAX_HP : int = 3
var _hp : int = MAX_HP

signal change_hp( hp : int)
signal dead

func _ready() -> void:
	_decrease_hp()
	_decrease_hp()
	_decrease_hp()


# HPをMAXまで回復する
func _cure_to_full() -> void:
	_hp = MAX_HP
	change_hp.emit()


# HPを1減らす
func _decrease_hp() -> void:
	_hp -= 1
	
	change_hp.emit( _hp )
	
	if _hp == 0:
		dead.emit()
		return
