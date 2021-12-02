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

## Notes

### _physics_process vs _process

In Godot, `_physics_process` is called a fixed amount of times in a second (default 60). `_process` runs every single frame and the amount of times it's called depends on your game FPS which is affected by many factors (processing, GPU, monitor refresh rate).

In this implementation, the behaviour tree tick is called on `_physics_process`, because `_process` caused some weird behaviour in my game. I believe physics process is what you would want to use, but if you wish to change it, the root call is on `./addons/behavior_tree/nodes/bt_root.gd`.


### Is this production ready?

This is just an example. I've been using the same implementation in the game I'm working on and I haven't run in any issues so far. However, this doesn't mean this would work for everyone. Feel free, to use it and change it as you see fit.


