extends Label

onready var valore = get_node("/root/Node2D/CanvasLayer/Control/risultato") #add dice tra control e risultato
var azzera = 0
onready var immagineDado = get_node("/root/Node2D/CanvasLayer/Control/dice")

func _on_Timer_timeout():
	valore.visible = false
	valore.text = str(azzera)
	immagineDado.visible = true
