extends Node

@export var _hp : HPEntityNode

@export var _gameover_text : RichTextLabel
@export var _gameover_panel : Panel


func _ready() -> void:
	_hp.change_hp.connect( Callable( self, "_dead" ))
	
	
func _dead( hp : int) -> void:
	print(hp)
	if hp <= 0:
		print("hello")
		_gameover_text.visible = true
		_gameover_panel.visible = true
