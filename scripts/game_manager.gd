extends Node

var score : int = 0
@onready var score_label = $ScoreLabel


# Adds one point to the player's score
func add_point():
	score += 1
	
	score_label.text = "You collected " + get_coin_label() + "."


func get_coin_label() -> String:
	var coin_label : String
	
	if score == 1:
		coin_label = "1 coin"
	else:
		coin_label = str(score) + " coins"
	
	return coin_label
