extends Node2D


onready var score = get_node("res://Main.tscn")
onready var timer = get_node("Score")

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	timer.text = str(score.DisplayValue)
