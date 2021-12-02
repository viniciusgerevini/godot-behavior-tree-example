extends ActionLeaf

export (String) var target_key

func tick(actor, blackboard):
	var target_position = blackboard.get(target_key)

	if not target_position:
		return SUCCESS

	actor.move_towards_position(target_position, blackboard.get("delta"))

	if actor.position.distance_to(target_position) < 5:
		return SUCCESS

	return RUNNING
