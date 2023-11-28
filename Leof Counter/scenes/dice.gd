extends TouchScreenButton

onready var valore = get_node("/root/Node2D/CanvasLayer/Control/risultato") #add dice tra control e risultato
var rnd = RandomNumberGenerator.new()
#onready var parla = get_node("/root/Node2D/CanvasLayer/Control/talk/AudioStreamPlayer2D")
onready var immagineDado = get_node("/root/Node2D/CanvasLayer/Control/dice")

func _ready():
	pass # Replace with function body.


func _on_dice_pressed():
	immagineDado.visible = false

	rnd.randomize()
	var rnd_r = rnd.randi_range(1, 20)
	
	var nuovo_valore = int(valore.text)
	nuovo_valore += rnd_r
	
	valore.text = str(nuovo_valore)
	
	valore.visible = true

