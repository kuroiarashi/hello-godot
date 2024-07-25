extends Area2D

# Exists on collision layer 1
# Detects collisions on layer 2 (player)


func _on_body_entered(body):
	# Notify that the coin has been picked up by the player
	print("+1 coin!")
	
	# Remove the coin from the scene when it's collected by the player
	queue_free()
