extends Node
class_name JumpComponent

@export_group("Settings")
@export var jump_velocity: float = 250

var is_jumping: bool = false

func handle_jump(body: CharacterBody2D, want_to_jump: bool) -> void:
	if body.is_on_floor() and want_to_jump:
		jump(body)
	
	is_jumping = body.velocity.y < 0 and not body.is_on_floor()

func jump(body: CharacterBody2D) -> void:
	body.velocity.y = -jump_velocity
