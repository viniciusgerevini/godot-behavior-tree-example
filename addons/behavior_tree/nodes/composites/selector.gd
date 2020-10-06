extends Composite

class_name SelectorComposite, "../../icons/selector.svg"

func tick(actor, blackboard):
	for c in get_children():
		var response = c.tick(actor, blackboard)

		if response != FAILURE:
			return response

	return FAILURE
