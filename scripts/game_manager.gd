extends Node

var score : int = 0
var player_dead: bool = false

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

func get_player_dead() -> bool:
	return player_dead

func set_player_dead():
	player_dead = true
	if OS.is_debug_build():
		print("You died!")
	
