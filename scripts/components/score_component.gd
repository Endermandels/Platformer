extends Node
class_name ScoreComponent

@export_group("Settings")
@export var score: int = 0
@export var goal_score: int = 100

var score_changed: bool = false

func increase_score(amount):
	score += amount
	score_changed = true

func reached_goal(exact: bool = false):
	return score == goal_score if exact else score >= goal_score
