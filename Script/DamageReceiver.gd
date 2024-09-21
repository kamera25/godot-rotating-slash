# DamageReciver.gd
# 攻撃を受けた時、HPを削る処理を実行する
extends Node

@export var hp : HPNode
@export var enemies : Array[EnemyCollision]


func _ready() -> void:
	for enemy in enemies:
		enemy.hit.connect( Callable( self, "_damage" ))

# HPを削る処理
func _damage() -> void:
	hp.decrease()
