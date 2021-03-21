extends Node2D

var DisplayValue = 0
var HighScore = 0
onready var timer = get_node("Timer")
func _ready():
	timer.set_wait_time(1)
	timer.start()
	$soundtrack.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	
	DisplayValue += 1
	


func _on_Button5_pressed():
	

	get_tree().reload_current_scene()
	get_tree().paused = false



func _on_Button4_pressed():
	get_tree().quit()
