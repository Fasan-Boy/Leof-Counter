extends TouchScreenButton

var myLabel

func _ready():
	myLabel = get_node("/root/Node2D/CanvasLayer/lp1")  # Imposta "path/to/myLabel" con il percorso completo al tuo oggetto Label

#func _on_incrementButton_pressed():  # Il segnale "pressed" viene emesso quando il pulsante viene premuto
#	# Ottieni il valore attuale nella Label, convertilo in un numero intero e incrementalo di 1
#	var currentValue = int(myLabel.text)
#	currentValue += 1


func _on_plusp1_pressed():
	var currentValue = int(myLabel.text)
	currentValue += 1

	# Aggiorna il testo della Label con il nuovo valore incrementato
	myLabel.text = str(currentValue)

