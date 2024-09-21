# HealthRestorer.gd
# HPの回復を司る処理
extends Node

@export var hp : HPNode
@export var hearts : Array[Heart]


func _ready() -> void:
	for heart in hearts:
		heart.pick_up.connect( Callable( self, "_cure" ))


func _cure() -> void:
	hp.cure()
