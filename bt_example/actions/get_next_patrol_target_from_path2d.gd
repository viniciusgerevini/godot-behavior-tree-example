extends ActionLeaf

export (NodePath) var path
export (String) var target_blackboard_key

onready var _path = get_node(path)

var _index = -1
var _is_returning = false


func tick(_actor, blackboard):
	if _is_returning:
		_index -= 1
		if _index <= 0:
			_index = 0
			_is_returning = false
	else:
		_index += 1
		if _index >= _path.curve.get_point_count():
			_index -= 1
			_is_returning = true

	blackboard.set(target_blackboard_key, _path.curve.get_point_position(_index))

	return SUCCESS

