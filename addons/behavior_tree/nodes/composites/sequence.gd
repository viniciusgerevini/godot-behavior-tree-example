extends Composite

class_name SequenceComposite
@icon("../../icons/sequencer.svg")

func tick(actor, blackboard):
	for c in get_children():
		var response = c.tick(actor, blackboard)

		if response != SUCCESS:
			return response

	return SUCCESS
