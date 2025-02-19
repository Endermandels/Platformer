extends Area2D
class_name CoinHurtbox

@export_group("Nodes")
@export var score_component: ScoreComponent

func _ready() -> void:
	self.connect("area_entered", handle_collision)

func handle_collision(coin: Coin):
	if coin.get_score() > 0:
		score_component.score += coin.get_score()
		print('total score: ', score_component.score)
	coin.queue_free()
