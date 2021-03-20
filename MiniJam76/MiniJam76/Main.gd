extends Node2D

var DisplayValue = 0
onready var timer = get_node("Timer")
func _ready():
	timer.set_wait_time(1)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	DisplayValue += 1
