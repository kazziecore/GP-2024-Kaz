extends Node2D

# Speed of the power-up's movement
var speed = 100
# Check if it is collected
var is_collected = false

func _ready():
	# Initial setup if needed (e.g., animations or effects)
	pass

func _process(delta):
	# Move the health power-up down the screen
	if not is_collected:
		position.y += speed * delta
		if position.y > get_viewport_rect().bottom:
			queue_free()  # Remove the power-up if it goes off-screen

# This function will be called when the power-up collides with the player
func collect():
	is_collected = true
	queue_free()  # Remove the power-up from the scene
