extends CharacterBody2D
class_name Player

@export_group("Nodes")
@export var anim_player: AnimationPlayer
@export var gravity_component: GravityComponent
@export var input_component: InputComponent
@export var movement_component: MovementComponent

func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal)
	
	move_and_slide()
