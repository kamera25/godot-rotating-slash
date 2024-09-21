extends Node

class_name GameOverUiPresenter

@export var _gameover_text : RichTextLabel
@export var _gameover_panel : Panel
	
	
func dead() -> void:
	_gameover_text.visible = true
	_gameover_panel.visible = true
