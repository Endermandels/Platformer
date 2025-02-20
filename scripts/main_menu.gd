extends Node
class_name MainMenu

@export_group("Nodes")
@export var play_btn: Button
@export var quit_btn: Button

func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _ready() -> void:
	play_btn.pressed.connect(_on_play_btn_pressed)
	quit_btn.pressed.connect(_on_quit_btn_pressed)

func _on_quit_btn_pressed():
	get_tree().quit()

func _on_play_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
