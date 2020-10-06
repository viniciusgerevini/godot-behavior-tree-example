extends Node2D


func move_towards_position(target_position: Vector2, delta: float):
	self.position += self.position.direction_to(target_position) * delta * 400
