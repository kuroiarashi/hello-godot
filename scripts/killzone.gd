extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	# Notify the player that they have died
	if OS.is_debug_build():
		print("You died!")
	
	# Slow time
	Engine.time_scale = 0.5
	
	# Remove the player collider to let the 
	# player fall off the map
	body.get_node("CollisionShape2D").queue_free()
	
	# Start the respawn timer
	timer.start()


func _on_timer_timeout():
	# Restarts the scene after death
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
