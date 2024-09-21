extends Node


@export var hp : HPNode
@export var enemies : Array[SkallCollision]


func _ready() -> void:
	for enemy in enemies:
		enemy.hit.connect( Callable( self, "_damage" ))


func _damage() -> void:
	print("hello")
	hp.decrease()
