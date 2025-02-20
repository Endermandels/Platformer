extends Area2D
class_name CoinHurtbox

@export_group("Nodes")
@export var score_component: ScoreComponent
@export var pick_up_coin_sfx: AudioStreamPlayer

func _ready() -> void:
	self.connect("area_entered", handle_collision)

func handle_collision(coin: Coin):
	if coin.get_score() > 0:
		score_component.increase_score(coin.get_score())
	pick_up_coin_sfx.play()
	coin.queue_free()
