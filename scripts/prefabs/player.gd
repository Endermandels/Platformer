extends CharacterBody2D
class_name Player

@export_group("Nodes")
@export var anim_player: AnimationPlayer
@export var death_hurtbox: Area2D
@export var gravity_component: GravityComponent
@export var input_component: InputComponent
@export var movement_component: MovementComponent
@export var animation_component: AnimationComponent
@export var jump_component: JumpComponent
@export var score_component: ScoreComponent

@export_group("Resources")
@export var player_signals: PlayerSignals

func _ready() -> void:
	death_hurtbox.area_entered.connect(_on_death_hurtbox_area_entered)

func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal)
	jump_component.handle_jump(self, input_component.get_jump_input())
	animation_component.handle_facing_horizontal_direction(input_component.input_horizontal)
	animation_component.handle_movement_animation(self)
	if score_component.reached_goal():
		get_tree().call_deferred("change_scene_to_file", "res://scenes/win.tscn")
	if score_component.score_changed:
		player_signals.score_changed.emit(score_component.score)
	
	move_and_slide()

func _on_death_hurtbox_area_entered(area: Area2D):
	get_tree().call_deferred("change_scene_to_file", "res://scenes/lose.tscn")
