extends CharacterBody2D

# Movement speed, adjustable in the editor
@export var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Player is ready!")

# Called every physics frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# Get input direction from arrow keys or WASD
	# Input.get_axis() returns a value between -1 and 1 for smooth movement
	var input_direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	# Normalize the direction vector to prevent faster diagonal movement
	# and multiply by speed to get the velocity.
	velocity = input_direction.normalized() * speed

	# Move the character and slide along colliders.
	move_and_slide()
