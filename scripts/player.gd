extends CharacterBody2D
class_name Player

@onready var anim_player = $AnimationPlayer

func _physics_process(delta: float) -> void:
	
	
	
	move_and_slide()
