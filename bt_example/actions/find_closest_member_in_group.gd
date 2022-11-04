extends ActionLeaf

@export var target_key : String
@export var group_name : String

func tick(actor, blackboard):
	var targets = get_tree().get_nodes_in_group(group_name)
	var target_distance = 1000
	var closest_target

	for target in targets:
		var distance = actor.position.distance_to(target.position)

		if distance < target_distance:
			target_distance = distance
			closest_target = target

	if closest_target == null:
		return FAILURE

	blackboard.set(target_key, closest_target.position)
	return SUCCESS
