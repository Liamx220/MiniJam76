extends KinematicBody2D


export (float) var max_rot_speed = 4
export (float) var acceleration = 1

onready var sprite = $Sprite
var velocity = Vector2()
var rotation_dir = 0
var rotation_speed = 0

	

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		rotation_dir += 1
	if Input.is_action_pressed('left'):
		rotation_dir -= 1 
	
	if (rotation_dir != 0):
		rotation_speed += 0.25 * acceleration	
	else:
		rotation_speed = 0
		
	rotation_speed = clamp(rotation_speed, 0, max_rot_speed)

func _physics_process(delta):
	
	
	get_input()
	rotation += rotation_dir * rotation_speed * delta
	velocity = move_and_slide(velocity)


func _on_Area2D_area_entered(area):
	$hit.play()
	$Sprite.play("hit")


