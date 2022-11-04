extends ActionLeaf

@export var blackboard_key : String

func tick(actor, blackboard):
	var mouse_position = get_viewport().get_mouse_position()
	blackboard.set(blackboard_key, mouse_position)
	return SUCCESS
