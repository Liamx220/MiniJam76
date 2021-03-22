extends KinematicBody2D


var speed = 200
var velocity = Vector2()
var player = null
func _ready():
	add_to_group("enemy")

func move_Down():
	velocity.x += 1
	velocity = velocity.normalized() * speed
	pass 


func _physics_process(delta):
	move_Down()
	move_and_slide(velocity)


func _on_Area2D_area_entered(area):
	if (area.is_in_group("enemy")):
		pass
	else:
		queue_free()
	
	
	
	
	
