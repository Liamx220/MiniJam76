extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if Input.is_action_pressed("pause"):
		visible = true
		get_tree().paused = true


func _on_Button_pressed():
	get_tree().paused = false
	visible = false


func _on_Button2_pressed():
	get_tree().quit()

