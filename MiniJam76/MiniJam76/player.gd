extends KinematicBody2D

var rotation_point = Vector2(100, 100)
var rotation_around_point = 0
var distance_from_point = 100
func _process(delta):
		# set the position to the point
	global_position = rotation_point
		# offset using the rotation
	global_position += Vector2(cos(rotation_around_point), sin(rotation_around_point)) * distance_from_point
