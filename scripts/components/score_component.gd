extends Node
class_name ScoreComponent

@export_group("Settings")
@export var score: int = 0

var score_changed: bool = false

func increase_score(amount):
	score += amount
	score_changed = true
