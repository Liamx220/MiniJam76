extends Node

const enemy = preload("res://enemy2.tscn")
var spawntimeMin = 3.0
var spawntimeMax = 3.8

var time_passed = 0
onready var timer = get_node("Timer")

func _ready():

	spawn()
	pass


func spawn():
 while true:
  spawntimeMin -= 0.01
  spawntimeMax -= 0.01
  randomize()


  var enemy_in = enemy.instance()
  var pos = Vector2() 
  pos.x = 0-16
  pos.y = rand_range(364.062, 18.994)
  enemy_in.set_position(pos)
  get_node("container").add_child(enemy_in)
  yield(get_tree().create_timer(rand_range(spawntimeMin, spawntimeMax)), "timeout") 
 pass

func _on_Timer_timeout():
	
	time_passed += 1
	if (time_passed <= 25):
		spawntimeMin -= (0.04 * (time_passed / 12)) # lower minimum spawn rate every 12 seconds
	else:
		spawntimeMin -= (0.01 * (time_passed / 15))
	

func _on_earth_game_over():
	queue_free()
