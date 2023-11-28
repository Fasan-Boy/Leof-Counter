extends TouchScreenButton


var touch_count : int = 0
var click_timeout : float = 0.5
var last_click_time : float = 0
onready var fotoLeo = get_node("/root/Node2D/CanvasLayer/TextureRect")
onready var pulsantePerTornare = get_node("/root/Node2D/CanvasLayer/Control/UnsafeMode")

func _ready():
	pass # Replace with function body.

func _process(delta):
	if touch_count == 2:

		fotoLeo.visible = true
		pulsantePerTornare.visible = false

		touch_count = 0
		


func _on_UnsafeMode_pressed():
	var current_time = OS.get_ticks_msec() / 1000.0

	# Verifica se è passato abbastanza tempo dall'ultimo clic
	if current_time - last_click_time < click_timeout:
		touch_count += 1
	else:
		touch_count = 1

	last_click_time = current_time
