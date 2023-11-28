extends KinematicBody2D

var num_pokeball = 0

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var velocity = Vector2()
	
	if Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
		velocity.y = -1
		$RayCast2D.cast_to = Vector2(0, -50)
		
	elif Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
		velocity.y = +1
		$RayCast2D.cast_to = Vector2(0, 50)
		
	elif Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		velocity.x = +1
		$RayCast2D.cast_to = Vector2(50, 0)
		
	elif Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		velocity.x = -1
		$RayCast2D.cast_to = Vector2(-50, 0)
	
	var moviment = 250*velocity.normalized()*delta
	self.move_and_collide(moviment)
	self.update_animations(velocity)
	
	if $RayCast2D.is_colliding():
		var collider = $RayCast2D.get_collider()
		if collider and Input.is_key_pressed(KEY_SPACE) and "Pokeball" in collider.name: # if collider sennò si blocca
			collider.queue_free()
			num_pokeball += 1
			print("Pokeball: ", num_pokeball)
	
func update_animations(velocity):
	if velocity.y == 1:   #quando il giocatore prima key down velocity.y si setta a 1
		$AnimatedSprite.play("walk_down")
		
	elif velocity.y == -1:
		$AnimatedSprite.play("walk_up")
		
	elif velocity.x == -1:
		$AnimatedSprite.play("walk_left")
		$AnimatedSprite.flip_h = false
		
	elif velocity.x == 1:
		$AnimatedSprite.play("walk_left")
		$AnimatedSprite.flip_h = true #per andare a dx specchio lo sprite di sx
		
	# Se velocity è un vettore nullo, quindi se il giocatore non schiaccia nessun tasto
	if velocity == Vector2():
		if $AnimatedSprite.animation == "walk_down":			
			$AnimatedSprite.play('stand_down')
			
		if $AnimatedSprite.animation == "walk_up":			
			$AnimatedSprite.play('stand_up')
			
		if $AnimatedSprite.animation == "walk_left":			
			$AnimatedSprite.play("stand_left")
	
	

