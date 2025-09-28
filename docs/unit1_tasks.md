# Unit 1: Git and Godot Orientation

## Learning Goals
- Understand version control basics
- Navigate the Godot editor
- Understand Godot's coordinate system
- Learn about scenes and nodes

## Part A: Git Setup (30 min)
1. Clone the repository
2. Create your own branch named "your-name-dev"
3. Make a test commit (edit README.md with your name)
4. Push your branch to remote

## Part B: Godot Editor Tour (20 min)
1. Open the project in Godot
2. Explore the FileSystem dock
3. Open `coordinate_demo.tscn`
4. Run the scene (F6) and observe the coordinate display
5. In the editor, move the TestObject to these positions:
   - (0, 0) - Where is it?
   - (100, 100) - Which direction did it move?
   - (-100, -100) - Where is it now?
   - (0, 200) - Is this up or down?

## Part C: Scene Exploration (20 min)
1. Open `player.tscn` in the editor
2. Identify these node types:
   - CharacterBody2D (root)
   - Sprite2D
   - CollisionShape2D
3. Notice the script attached (scroll icon)
4. Try changing the player sprite color:
   - Select Sprite2D node
   - In Inspector, find Texture
   - Drag a different colored rectangle from assets

## Part D: Your First Change (20 min)
1. Open `game.tscn` (it's empty!)
2. Run it (F5) - nothing happens
3. Drag `player.tscn` from FileSystem into the game scene
4. Save the scene (Ctrl+S)
5. Run the game - you should see a blue square!
6. Commit your change:
   ```bash
   git add .
   git commit -m "Added player to game scene"
   git push

## Checkpoint Questions

* [ ] What happens when Y increases in Godot?
* [ ] What is the origin point (0,0) in Godot 2D?
* [ ] What's the difference between a scene and a node?
* [ ] Why is the CollisionShape2D disabled?

## Extension Challenge

If you finish early, try:

1. Creating a new scene with multiple colored squares
2. Positioning them at specific coordinates
3. Making one square a child of another - what happens when you move the parent?
