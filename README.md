# Godot Behavior Tree Example

In this project you will find an example o Behavior Tree implemented in Godot, without extra plugins.

You can find the basic nodes under `/addons/behavior_tree`. Custom code is on `/bt_example`.

This example was created for this video: https://www.youtube.com/watch?v=1rNLTHbFFaA


## What is this Behavior Tree doing

### Main example
`./bt_example/main.tscn`
- Follow mouse cursor when close (less than 300px).
- Go to the closest home, in case mouse is too far.
- After reaching home, changes npcs color to red.

### Patrol examples
- `./bt_example/patrol_example.tscn`: NPC patrols between two nodes.
- `./bt_example/patrol_example_multiple_points.tscn`: NPC patrols following a list of nodes.
- `./bt_example/patrol_example_path_2d.tscn`: NPC patrols following a Path2D.
