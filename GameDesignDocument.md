Barebones RPG - Game Design Document
====================================

Executive Summary
-----------------

**Title:** Barebones RPG  
**Genre:** Top-down 2D Role-Playing Game  
**Platform:** PC (Windows, Mac, Linux)  
**Engine:** Godot 4.x  
**Target Audience:** Game development students (ages 12+)  
**Development Timeline:** 9-week curriculum

### Concept Statement

A minimalist RPG framework designed for educational purposes, where students progressively build a complete game while learning fundamental game development concepts. The game starts as an empty canvas and evolves into a fully-featured RPG through guided student implementation.
Educational Goals

### Primary Learning Objectives

1. **Technical Skills**
   
   * Version control with Git
   * Godot Engine fundamentals
   * 2D coordinate systems
   * Object-oriented programming basics
   * Event-driven programming

2. **Game Design Principles**
   
   * Iterative development
   * Player feedback systems
   * Level design basics
   * Balancing mechanics
   * User interface design

3. **Soft Skills**
   
   * Problem-solving
   * Debugging techniques
   * Collaboration through Git
   * Project organization
   * Documentation practices

Core Gameplay
-------------

### Final Game Overview

By Module 9, students will have built a game featuring:

* Character movement and animation
* Interactive NPCs with dialogue
* Collectible items and inventory
* Simple combat system
* Environmental puzzles
* Save/load functionality

### Progressive Gameplay Elements

#### Module 1: Foundation

* **Gameplay:** None initially
* **Student Adds:** Basic scene structure

#### Module 2: Movement

* **Gameplay:** Character movement with arrow keys/WASD
* **Student Adds:** Character identity (name label), HUD basics

#### Module 3: Exploration

* **Gameplay:** Camera following, basic level navigation
* **Student Adds:** Tile-based level design

#### Module 4: Interaction

* **Gameplay:** Collision with walls, item collection
* **Student Adds:** Keys, doors, treasure

#### Module 5: Polish

* **Gameplay:** Animated character, sound feedback
* **Student Adds:** Visual and audio personality

#### Module 6: Depth

* **Gameplay:** Proper sprite layering in top-down view
* **Student Adds:** Complex environment objects

#### Module 7: NPCs

* **Gameplay:** NPC interactions, dialogue system
* **Student Adds:** Story elements, quest hints

#### Module 8: Systems

* **Gameplay:** Inventory, health, basic combat
* **Student Adds:** Resource management, challenge

#### Module 9: Complete Game

* **Gameplay:** Full game loop with menus
* **Student Adds:** Polish, balancing, personal touches

Game Mechanics
--------------

### Movement System

* **Base Speed:** 200 pixels/second (adjustable)
* **Input:** 8-directional movement via keyboard
* **Collision:** Slide along walls
* **Animation States:** Idle, Walk (4 directions)

### Collision System

* **Layer 1:** Walls (blocking)
* **Layer 2:** Interactive objects
* **Layer 3:** Collectibles
* **Layer 4:** NPCs
* **Layer 5:** Enemies (Module 8+)

### Interaction System

    Player approaches interactable → Press [E] → Trigger event
    Events include:
    - Pick up item
    - Open door (if has key)
    - Read sign
    - Talk to NPC
    - Activate switch

### Inventory System (Module 8)

* **Type:** Simple array/dictionary
* **Capacity:** 10 items initially
* **Categories:** Keys, Consumables, Quest Items
* **Usage:** Click to use, drag to drop

### Dialogue System (Module 7)

* **Structure:** Branching dialogue tree
* **Display:** Bottom screen dialogue box
* **Controls:** [Space] to advance, number keys for choices
* **Features:** Character names, portraits (optional)

### Combat System (Module 8 - Optional)

* **Type:** Simple real-time
* **Player Actions:** Attack (spacebar), block (shift)
* **Damage:** Fixed values initially
* **Enemy AI:** Basic patterns (patrol, chase, attack)

Level Design Philosophy
-----------------------

### Teaching Progression

1. **Single screen** (Module 1-2)
2. **Scrolling level** (Module 3)
3. **Multi-room dungeon** (Module 4)
4. **Interior/exterior spaces** (Module 5-6)
5. **Hub world with zones** (Module 7-9)

### Design Principles

* **Clarity:** Players always know where they can go
* **Guidance:** Visual cues lead players forward
* **Challenge Ramp:** Gradual increase in complexity
* **Backtracking:** Minimal, unless for teaching purposes
* **Secrets:** Optional areas reward exploration

### Sample Level Layout (Module 4)

    ┌─────────────────────────┐
    │ S ┌───┐                │
    │   │ T │    ┌─────┐     │
    │   └─·─┘    │  C  │     │
    │     ·      └──·──┘     │
    │     ·         ·        │
    │   ┌─·───────··─┐       │
    │   │ K          │       │
    │   └────────────┘   D   E
    └─────────────────────────┘
    
    S = Start, T = Treasure, C = Challenge Room
    K = Key, D = Door, E = Exit, · = Path

Art Direction
-------------

### Visual Style

* **Initial:** Colored rectangles and basic shapes
* **Intermediate:** Simple pixel art sprites
* **Final:** Cohesive tileset and character sprites

### Color Palette (Teaching Tool)

    Phase 1 (Modules 1-3): Primary Colors
    - Player: Blue (#0080FF)
    - Walls: Gray (#808080)
    - Items: Yellow (#FFFF00)
    - Enemies: Red (#FF0000)
    
    Phase 2 (Modules 4-6): Expanded Palette
    - Add earth tones for environment
    - Character sprites with 4-5 colors
    - Distinct palettes for different areas
    
    Phase 3 (Modules 7-9): Full Artistic Freedom
    - Students choose their own aesthetic
    - Consistent style throughout

### Sprite Specifications

* **Tile Size:** 32x32 pixels
* **Character Size:** 32x48 pixels (for better proportions)
* **UI Elements:** 16x16 for icons
* **Animation:** 4 frames per direction

Audio Design
------------

### Progressive Audio Implementation

#### Module 5: Basic Audio

* Footstep sounds
* Item pickup chime
* Door opening sound
* Simple background loop

#### Module 7: Expanded Audio

* NPC greeting sounds
* Dialogue blips
* Ambient area themes

#### Module 9: Full Soundscape

* Menu music
* Victory fanfare
* Combat sounds
* Environmental ambience

### Audio Guidelines

* **Format:** OGG Vorbis preferred
* **Length:** Loops 30-60 seconds
* **Volume:** Adjustable via settings
* **Sources:** Creative Commons or student-created

User Interface
--------------

### HUD Elements (Progressive)

#### Module 2: Basic HUD

    ┌─────────────────┐
    │ Position: (0,0) │
    └─────────────────┘

#### Module 4: Expanded HUD

    ┌─────────────────┐
    │ Health: ❤❤❤     │
    │ Keys: 🔑 x2     │
    └─────────────────┘

#### Module 8: Full HUD

    ┌─────────────────────────┐
    │ Health: ❤❤❤❤❤           │
    │ Items: [1][2][3][4][5]  │
    │ Quest: Find the Crystal │
    └─────────────────────────┘

### Menu Structure

    Main Menu (Module 9)
    ├── New Game
    ├── Continue
    ├── Settings
    │   ├── Audio Volume
    │   ├── Controls
    │   └── Back
    ├── Credits
    └── Quit
    
    Pause Menu (Module 9)
    ├── Resume
    ├── Save Game
    ├── Settings
    └── Main Menu

Technical Architecture
----------------------

### Scene Hierarchy

    Game (Node2D)
    ├── World (Node2D with YSort)
    │   ├── TileMap
    │   ├── Objects (Node2D)
    │   ├── NPCs (Node2D)
    │   ├── Enemies (Node2D)
    │   └── Player (CharacterBody2D)
    │       ├── Sprite2D
    │       ├── CollisionShape2D
    │       ├── Camera2D
    │       └── InteractionArea (Area2D)
    ├── UI (CanvasLayer)
    │   ├── HUD (Control)
    │   ├── DialogueBox (Control)
    │   └── Inventory (Control)
    └── GameController (Node)

### Core Systems

#### State Management

    enum GameState {
        MENU,
        PLAYING,
        PAUSED,
        DIALOGUE,
        INVENTORY,
        GAME_OVER
    }

#### Save System Structure

    var save_data = {
        "player_position": Vector2(),
        "player_health": 100,
        "inventory": [],
        "flags": {},  # Quest progress
        "current_level": "level_1"
    }

Narrative Framework (Optional)
------------------------------

### Basic Story Template

Students can choose their own narrative, but here's a template:

**Act 1 (Modules 1-3):** Setup

* Player arrives in village
* Something is wrong/missing
* Player must help

**Act 2 (Modules 4-7):** Development

* Explore surrounding areas
* Gather items/information
* Meet helpful NPCs
* Face increasing challenges

**Act 3 (Modules 8-9):** Resolution

* Confront main challenge
* Use accumulated skills/items
* Restore balance
* Celebration/ending

### Sample Quests

1. **The Lost Key:** Find key to unlock town gate
2. **Herb Collector:** Gather 3 herbs for the healer
3. **Bridge Repair:** Find materials to fix bridge
4. **The Crystal Cave:** Retrieve magical crystal
5. **Final Challenge:** Defeat/solve main problem

Performance Targets
-------------------

### Minimum Specifications

* **Resolution:** 1280x720
* **Framerate:** 60 FPS
* **Input Lag:** < 16ms
* **Load Time:** < 3 seconds

### Optimization Guidelines

* Limit simultaneous enemies to 10
* Reuse scenes via instancing
* Optimize collision shapes (rectangles over complex polygons)
* Limit particle effects
* Use object pooling for projectiles

Playtesting Framework
---------------------

### Module Checkpoints

Each module ends with peer playtesting:

1. **Functionality Test:** Does everything work?
2. **Clarity Test:** Is it clear what to do?
3. **Fun Factor:** What's enjoyable?
4. **Bug Hunt:** Document any issues
5. **Improvement Ideas:** Suggest one enhancement

### Final Game Requirements

* 5-10 minutes of gameplay
* At least 3 interactive NPCs
* Minimum 5 collectible items
* 1 puzzle or challenge
* Beginning, middle, and end

Extended Features (Advanced Students)
-------------------------------------

### Optional Additions

* **Shop System:** Buy/sell items
* **Character Classes:** Different playstyles
* **Magic System:** Spells with cooldowns
* **Day/Night Cycle:** Time-based events
* **Weather Effects:** Rain, snow particles
* **Achievements:** Track player accomplishments
* **Minimap:** Show explored areas
* **Stealth Mechanics:** Avoid detection
* **Crafting System:** Combine items
* **Pet Companion:** Following AI character

Success Metrics
---------------

### Student Learning Outcomes

* [ ] Can create and manage Git repositories
* [ ] Understands parent-child node relationships
* [ ] Can implement basic game mechanics
* [ ] Demonstrates iterative development
* [ ] Shows debugging proficiency
* [ ] Creates playable, complete experience

### Project Assessment Rubric

| Criterion         | Beginner             | Proficient                  | Advanced                   |
| ----------------- | -------------------- | --------------------------- | -------------------------- |
| **Functionality** | Basic movement works | All core systems functional | Extra features implemented |
| **Code Quality**  | Runs without errors  | Well-organized, commented   | Optimized, reusable        |
| **Design**        | Playable             | Clear goals, good feedback  | Engaging, polished         |
| **Creativity**    | Follows template     | Some original elements      | Unique vision realized     |
| **Documentation** | Basic commits        | Clear commit messages       | Comprehensive README       |

Resources and References
------------------------

### Required Tools

* Godot Engine 4.x
* Git/GitHub Desktop
* Text editor (for documentation)
* Image editor (optional)

### Learning Resources

* Godot Documentation: docs.godotengine.org
* KidsCanCode Tutorials
* GDQuest YouTube Channel
* Game Programming Patterns (book)

### Asset Sources

* OpenGameArt.org
* Freesound.org
* Itch.io asset packs
* Kenny.nl (free assets)

Development Schedule
--------------------

| Stage | Module   | Milestone                               |
| ----- | -------- | --------------------------------------- |
| 1     | Module 1 | Git setup, coordinate system understood |
| 2     | Module 2 | Player movement and basic UI            |
| 3     | Module 3 | Camera and level design                 |
| 4     | Module 4 | Collisions and interactions             |
| 5     | Module 5 | Audio and visual polish                 |
| 6     | Module 6 | Depth sorting mastered                  |
| 7     | Module 7 | NPCs and dialogue                       |
| 8     | Module 8 | Inventory and combat (optional)         |
| 9     | Module 9 | Complete, polished game                 |

Coding Conventions:
----------

- Indent with tabs, not spaces.
- Maintain a README.md file of features, in checklist format, with implemented features checked off.
- Maintain a GEMINI.md file for the agent's purposes in coding, listing anything he AI will need to readily reference about the project, including any recurring syntactical errors (such as proper tertiatry operators), 
- Godot ternary operators use syntax: "value1 if condition else value2"
	- incorrect: "condition ? value1 : value2"



# Conclusion

This barebones RPG serves as a complete learning journey from empty project to finished game. The modular design ensures that students of different skill levels can succeed while allowing advanced students to extend beyond the basics. The emphasis on iterative development mirrors professional game development practices while maintaining an approachable scope for beginners.

The true success of this project isn't measured by the complexity of the final game, but by the understanding and confidence students gain through building it themselves, piece by piece.
