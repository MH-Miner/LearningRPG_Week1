extends Node2D

@onready var test_object = $TestObject
@onready var coord_display = $CoordinateDisplay

func _ready():
    print("Coordinate Demo Started")
    print("Remember: In Godot 2D, Y increases downward!")
    print("Try moving TestObject in the editor to see coordinates")

func _process(_delta):
    # Update the coordinate display
    if test_object:
        coord_display.text = "Position: (%d, %d)" % [test_object.position.x, test_object.position.y]

        # Show which quadrant we're in
        if test_object.position.x > 0 and test_object.position.y > 0:
            coord_display.text += "\nQuadrant: Bottom-Right"
        elif test_object.position.x < 0 and test_object.position.y > 0:
            coord_display.text += "\nQuadrant: Bottom-Left"
        elif test_object.position.x < 0 and test_object.position.y < 0:
            coord_display.text += "\nQuadrant: Top-Left"
        else:
            coord_display.text += "\nQuadrant: Top-Right"

