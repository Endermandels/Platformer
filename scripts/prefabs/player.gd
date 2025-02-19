extends CharacterBody2D
class_name Player

@export_group("Nodes")
@export var anim_player: AnimationPlayer
@export var gravity_component: GravityComponent
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent
@export var jump_component: JumpComponent

func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal)
	jump_component.handle_jump(self, input_component.get_jump_input())
	animation_component.handle_facing_horizontal_direction(input_component.input_horizontal)
	animation_component.handle_movement_animation(self)
	
	move_and_slide()
