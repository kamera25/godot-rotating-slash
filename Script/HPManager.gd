extends Node

# HPManagerNode.gd
# HPに関しての全て機能を記述する
@export var player : Node


func _ready() -> void:
	player.connect( "hit", Callable( self, "_decrease_hp"))

func _decrease_hp() -> void:
	hp -= 1
	
	
var hp : int 
