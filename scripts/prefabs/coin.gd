extends Area2D
class_name Coin

@export_group("Nodes")
@export var collectible_component: CollectibleComponent

func get_score() -> int:
	return collectible_component.collectible_data.score
