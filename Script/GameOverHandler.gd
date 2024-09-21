extends Node

@export var _hp : HPNode
@export var _presenter : GameOverUiPresenter

func _ready() -> void:
	_hp.change_hp.connect( Callable( self, "_dead" ))

func _dead( hp : int) -> void:
	if hp <= 0:
		_presenter.dead()
