extends Area2D

# Exists on collision layer 1
# Detects collisions on layer 2 (player)

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer


func _on_body_entered(body):
	# Notify that the coin has been picked up by the player
	game_manager.add_point()
	
	# Remove the coin from the scene when it's collected by the player
	animation_player.play("pickup")
