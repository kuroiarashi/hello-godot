extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	# Notify the player that they have died
	if OS.is_debug_build():
		print("You died!")
	
	timer.start()


func _on_timer_timeout():
	# Restarts the scene after death
	get_tree().reload_current_scene()
