# HealthRestorer.gd
# HPの回復を行う処理
extends Node

@export var hp : HPNode
@export var hearts : Array[Heart]


func _ready() -> void:
	for heart in hearts:
		heart.pick_up.connect( Callable( self, "_cure" ))

# HPを回復させる処理を実行
func _cure() -> void:
	hp.cure()
