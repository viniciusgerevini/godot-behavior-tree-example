extends ActionLeaf

export (NodePath) var point_a
export (NodePath) var point_b
export (String) var target_blackboard_key


onready var node_a = get_node(point_a)
onready var node_b = get_node(point_b)

func tick(actor, blackboard):
	var target = blackboard.get(target_blackboard_key)
	if not target or target == node_a.position:
		blackboard.set(target_blackboard_key, node_b.position)
	else:
		blackboard.set(target_blackboard_key, node_a.position)

	return SUCCESS
