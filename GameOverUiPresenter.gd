extends Node

@export var _hp : HPEntityNode

@export var _gameover_text : RichTextLabel
@export var _gameover_panel : Panel


func _ready() -> void:
	_hp.dead.connect( Callable( self, "_update_view" ))
	
	
func _update_view() -> void:
	_gameover_text.visible = true
	_gameover_panel.visible = true
