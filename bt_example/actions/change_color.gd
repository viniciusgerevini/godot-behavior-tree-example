extends ActionLeaf


func tick(actor, blackboard):
	actor.modulate = Color(1, 0, 0)
	return SUCCESS
