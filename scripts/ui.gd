extends CanvasLayer

@onready var position_label = $PositionLabel

# We need a reference to the player to get its position.
# We can use an export variable to set it from the editor.
@export var player: Node2D

func _process(delta):
	if player:
		position_label.text = "Position: (%d, %d)" % [int(player.global_position.x), int(player.global_position.y)]
