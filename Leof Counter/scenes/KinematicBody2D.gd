extends KinematicBody2D


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var velocity = Vector2()
	
	if Input.is_key_pressed(KEY_UP):
		velocity.y = -1
		
	elif Input.is_key_pressed(KEY_DOWN):
		velocity.y = +1
		
	elif Input.is_key_pressed(KEY_RIGHT):
		velocity.x = +1
		
	elif Input.is_key_pressed(KEY_LEFT):
		velocity.x = -1
	
	var moviment = 250*velocity.normalized()*delta
	self.move_and_collide(moviment)
#	pass
