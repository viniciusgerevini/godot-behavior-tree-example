extends ConditionLeaf

@export var detection_radius : float = 300
@export var target_key : String


func tick(actor, blackboard):
	var target_position = blackboard.get(target_key)

	if actor.position.distance_to(target_position) < detection_radius:
		return SUCCESS

	return FAILURE
