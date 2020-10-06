extends ConditionLeaf

export (float) var detection_radius = 300
export (String) var target_key


func tick(actor, blackboard):
	var target_position = blackboard.get(target_key)

	if actor.position.distance_to(target_position) < detection_radius:
		return SUCCESS

	return FAILURE
