extends Label

func _ready():
	pass # Replace with function body.

func _process(delta):
	text = "Time:" + str(get_parent().DisplayValue)