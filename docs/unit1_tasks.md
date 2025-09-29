# Unit 1: Git and Godot Orientation

## Learning Goals
- Understand version control basics: how to clone a git repo
- Navigate the Godot editor
- Learn about scenes and nodes

## Part A: Git Setup (30 min)
1. Clone the repository

## Part B: Godot Editor Tour (20 min)
1. `Open the project in Godot`

2. `Press F5 or the Run arrow to run the game.`
	a. Oh, there's a problem. There's no main scene!
	b. Click "Select"
	c. select scene "res://scenes/game.tscn"

3. `Press F5 or the Run arrow to run the game.`
	a. Well, that was disappointing. The game ran, but nothing happened!
	b. On the lower left, is the `FileSystem` panel. It shows all the files in your game. In the `Filter Files` field, type `game` into the FileSystem panel; find `game.tscn` and double-click to open it.
	c. Well no wonder! It's empty! Let's put something in it. Every game needs a player, so let's add one.
	d. Back in filesystem, type `player`.
	e. Hey, there are TWO "player" files! One is the `player.tscn`, the scene you've been messing with, the other is `player.gd`. What's up?
		Well, remembr, there are two kinds of files? player.tscn is our player scene, and player.gd is the script for it.
	e. Select `player.tscn` and drag it into `game.tscn`: drop it where you want your player to start.
	
4. `Press F5 or the Run arrow to run the game.`
	a. THere's. Still. Nothing. In. THE SCENE!!!
	b. Open player.tscn.
	c. Oh, there's nothing in there either! That explains it. Let's give it something to look like!
	d. In player.tscn, select the base node (`Player`) and then the `+` button right above it to add a child node.
	e. Type `sprite` in the search bar, then find the `Sprite2D` node and click the `Create` button.
	f. There's STILL nothing to see! Give up. Wait, no don't do that, instead select the Sprite2D and look at the panel all the way on the right. That's the `Inspector` panel.
	g. At the top of the Inspector panel, right under `Sprite2D`, there's a `Texture` field. That needs something. Look in the FileSystem panel. In the "Filter Files" field, type `blue`.
	Select `blue_rect.png`, and drag it all the way to the Texture field. Hey, we have texture!
	h. Look back at the game.tscn scene. Hey, it doesn't look any different! Well, go back to player.tscn and press `Ctrl + S` to save it, then look back at game.tscn. See anything different?

5. `Press F5 or the Run arrow to run the game.`
	a. There's a player! But... it still isn't doing anything.
	b. Remember about scenes and scripts? The scene won't do anything without a script telling it what to do. Fortunately, you have a script waiting for you!
	c. Go back to `Filter Files` in FileSystem panel and type `player`. 
	d. `*.gd` is the extension for the GDScript files! That's our player script! Click it and drag it all the way up to the root node (`Player`) in `player.tscn` (from now on, we'll just call that "the player scene"))

6. `Press F5 or the Run arrow to run the game.`
	a. Before you do anything, ;ook in the Output tab at the bottom of the editor, does it say anything new? 
		Yes! It's says `Player is ready!`. Theres a message in the script that prints out to the oputput window. We can use statements like this to make sure things are working correctly... or let us know if they've gone wrong.
	b. Press the arrow keys. Success! but... what if you want to use your left hand to move?
	c. In the top menus, click Project -> Project Settings.
	d. At the top, click `Input Map`; in the search bar, type `left`; go down to "ui_left"; click the `+` button all the way on the right, then the `a` key on your keyboard. You've added the A key to the ui_left" input, and now it will activate it just liek the left arrow will.
		- Now do the other directions: 
			- search for `up` and add the letter "u" to "ui_up"
			- search for "right' and add the letter "d" to "ui_right", 
			- search for "down" and add the letter "s" to "ui_down".
			
## Checkpoint 1: First Moving Player (After Step 6)
Quick Check - Can You:

[ ] Explain what a scene file (.tscn) contains vs. what a script file (.gd) does?
[ ] Name the three main panels you used: __________, __________, and __________
[ ] What happens if you forget to save the player scene after adding the Sprite2D?
[ ] Why did the player need both a Sprite2D AND a script to work properly?
	Fortunately, -- or sometimes, unfortuately -- when you try to run the game, ti automatically saves all of the unsaved open scripts,soi it shoudl apply any changes automatically.
	
7. `Press F5 or the Run arrow to run the game.`
	a. try moving with the WASD keys.
	b. Yay!
	
8. `Pretty good, pretty good! Maybe you like a blue square as a player, some people do, but just in case you'd rather have something else:`
	a. Go back to the player scene and select the Sprite2D node. 
	b. Down in the FileSystem panel, ope up the "assets" folder. This has several files; double-click on any of them  and you can see it in the Inspector panel. 
	c. Find one that looks acceptable to you for the PLayer (remember you can change it whenever you want. Later in the year we'll be looking at how to find or create your own assets.) 

## Checkpoint 2: Customization & Input (After Steps 7-8)
Quick Check - Can You:

[ ] Open the Project Settings and find the Input Map?
[ ] Explain why we map multiple keys (like 'A' and Left Arrow) to the same action?
[ ] Change your player's sprite to a different image from the assets folder?
[ ] What file extension do Godot script files use? __________

9. `Press F5 or the Run arrow to run the game.`
	a. Take your new player character for a spin. Yeah. I know, they're not animated; that's not happening this meeting, sorry. We're gonna learn it soon, though!
	b. One more thing: now that they have a body that's not a square (or even if they still do), your player character probably deserves a name. But where would be put it?
	c. Go into the player scene again. Once again, select the Player node and press the `+` button right over it.
	d. This time, search for `label`; select the `Label` node and then click `Create"`.
	e. Click on the new Label node, the look over at the Inspector panel and right at the tip there's a big empty field labeled "Text". Type your character's name here. Then click "2D" at the top of the editor, and move the label to wherever you like; mayeb right above or below the character.


## Checkpoint 3: Node Hierarchy (After Step 9)
Quick Check - Can You:

[ ] Add a child node to an existing node?
[ ] Explain the difference between a node's properties in the Inspector vs. what you see in the game?
[ ] Move UI elements using the 2D view?
[ ] What's the relationship between the Player node and the Label node you created?

10. But wait... what about that player ready message? It still says "Player ready!". What if you have a game with more than one player? You'll want to know which player it's talking about,right? How can we do that? Well, where did we store the name?
	a. Next to the base Player node, there's now an icon that looks like a piece of paper; that's the script you linked to it. Click on the icon, and the script should open up.
	b. It's a pretty small script right now; pretty much all it does is print "Player is ready!", then read the keypresses and move the player. 
	c. Near the top, you'll see `func _ready():` This is a function call, and we'll get to those soon. Basically, it's just a set of commands that rund together to do something. 
	d. In this case, just one command: `print("Player is ready!")` the keyword "print" tell sit to take anythign that's in the parentheses and print it out to standard output; that's that Output tab at the botom of the screen.
	e. But we don't want to just print "Player", we want it to print the player's name. Well, that's in the label you made. So, we're going to change the line to read the label. 
	f: first, delete the word "player" -- but ot the space after it, ebcasue we want the space before "is" -- and, between the parentheses and the quotation mark, type a `+` symbol. This is how we `caoncatenate`: join two strings of characters together. It's literally "string1 plus string2"
	g. So how do we get the label into the code? You can just drag it. Select it from the scene tre, and drag it straight into the code where you want it, in the parentheses.
	h. Now it should say `print($Label + " is ready!")` But... the line just turned red. That means there's a problem; there editor is pretty smart, and wil often tell you of problems in the code as soon as you type it. 
		And down below, in red letters, it should say somethig like `Line 8:Invalid operands "Node" and "String" for "+" operator.`
		That's because we have the whole label in there, not just the text. Look over at the Inspector: all that stuff is part of the label: the size, the position, the font, the color of the letters, everything. It can't add that into a string. 
	i. But it's easy to just get the part we need: After $label, we type `.text`. So the line shoudl nopw be:
		`print($Label.text + " is ready!")`
		
11. `Press F11 or the Run arrow to run the game.`
	a. Check the output. What does it say?

## Checkpoint 4: Script Modification (After Step 10)

Quick Check - Can You:

[ ] Open a script by clicking the script icon next to a node?
[ ]  Explain what $Label.text means in GDScript?
[ ]  Describe what string concatenation does?
[ ]  Why did print($Label + " is ready!") cause an error?
[ ]  Check the Output panel to see your custom message?
	

## Extension Challenge

If you finish early, try:

1. Creating a new scene with multiple colored squares
2. Positioning them at specific coordinates
3. Making one square a child of another - what happens when you move the parent?
