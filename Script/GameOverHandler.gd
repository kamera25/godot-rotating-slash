# GameOverHandler.gd
# ゲームオーバー条件を満たした場合、ゲームオーバー処理を行う
extends Node

@export var _hp : HPNode
@export var _player : PlayerCharacter
@export var _presenter : GameOverUiPresenter

func _ready() -> void:
	_hp.change_hp.connect( Callable( self, "_dead" ))

# HPが0になった時の処理
func _dead( hp : int) -> void:
	if hp <= 0:
		_presenter.dead()
		_player.freeze()
