extends KinematicBody2D


export (float) var rotation_speed = 4

var velocity = Vector2()
var rotation_dir = 0


func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed('left'):
		rotation_dir -= 1 


func _physics_process(delta):
	
	
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)


