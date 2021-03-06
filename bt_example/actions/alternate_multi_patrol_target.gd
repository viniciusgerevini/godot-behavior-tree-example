extends ActionLeaf

export (Array, NodePath) var path
export (String) var target_blackboard_key

onready var _path = _path_positions(path)

func tick(actor, blackboard):
	var current_target = blackboard.get(target_blackboard_key)

	if not current_target:
		current_target = _path[0]
		blackboard.set(target_blackboard_key, current_target)
		return SUCCESS

	var  position_index= _path.find(current_target) + 1

	if position_index >= _path.size():
		_path.invert()
		current_target = _path[0]
	else:
		current_target = _path[position_index]

	blackboard.set(target_blackboard_key, current_target)

	return SUCCESS


func _path_positions(patrol_path):
	var positions = []
	for point in patrol_path:
		positions.push_back(get_node(point).global_position)
	return positions

