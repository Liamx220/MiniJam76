extends Node
const enemy = preload("res://enemy.tscn")
var spawntimeMin = 1.0
var spawntimeMax = 1.87


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
