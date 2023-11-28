extends TouchScreenButton


var myLabel

func _ready():
	myLabel = get_node("/root/Node2D/CanvasLayer/lp2")
	


func _on_minusp2_pressed():
	var currentValue = int(myLabel.text)
	currentValue -= 1

	# Aggiorna il testo della Label con il nuovo valore incrementato
	myLabel.text = str(currentValue)
