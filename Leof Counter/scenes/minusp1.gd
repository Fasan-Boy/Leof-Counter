extends TouchScreenButton


var myLabel

func _ready():
	myLabel = get_node("/root/Node2D/CanvasLayer/lp1")
	
	

func _on_minusp1_pressed():
	var currentValue = int(myLabel.text)
	currentValue -= 1

	# Aggiorna il testo della Label con il nuovo valore incrementato
	myLabel.text = str(currentValue)