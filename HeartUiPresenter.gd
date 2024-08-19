extends Node

@export var _hp : HPEntityNode
@export var _hp_sprites : Array[Sprite2D]

@export var _normal_heart : Texture
@export var _lost_heart : Texture


func _ready() -> void:
	_hp.change_hp.connect( Callable( self, "_update_view" ))
	
	
func _update_view( _now_hp : int ) -> void:
	
	for i in range( _hp_sprites.size() ):
		if _now_hp - i > 0:
			_hp_sprites[i].texture = _normal_heart
		else:
			_hp_sprites[i].texture = _lost_heart
	
