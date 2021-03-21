extends StaticBody2D


onready var progressBar = $ProgressBar
onready var GameOver = $Gameover
onready var Displayscore = $Gameover/Score
onready var highscore = $Gameover/Score2
onready var sprite = $AnimatedSprite
onready var score = get_node("/root/Node2D/Display")#.get("Display.gd")

signal game_over

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

		


func _on_Area2D_area_entered(area):
	$hitearht.play()
	if area.is_in_group("enemy"):
		pass
		
		progressBar.value += 20
	if area.is_in_group("enemy2"):
		pass
		
		progressBar.value += 30
	if progressBar.value == 100:
		$AnimatedSprite.play("explode")
		if sprite.frame == 5:
		
			emit_signal("game_over")
			$death.play()
			GameOver.visible = true
			get_tree().paused = true
			print(score.get_parent().DisplayValue)
			
			Displayscore.text = "Score:" + str(score.get_parent().DisplayValue)
		

