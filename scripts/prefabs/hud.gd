extends CanvasLayer
class_name HUD

@export_group("Nodes")
@export var score_label: Label

@export_group("Resources")
@export var player_signals: PlayerSignals

func _ready() -> void:
	player_signals.score_changed.connect(_on_player_score_changed)

func _on_player_score_changed(new_score: int) -> void:
	score_label.text = "Score: " + str(new_score)
