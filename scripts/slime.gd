extends Node2D

const SPEED : int = 60

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Change direction based on collisions
	if ray_cast_right.is_colliding():
		# change direction to move left
		direction = -1
		animated_sprite.flip_h = true
	elif ray_cast_left.is_colliding():
		# change direction to move right
		direction = 1
		animated_sprite.flip_h = false

	position.x += direction * SPEED * delta
