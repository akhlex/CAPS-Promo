extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("walk")
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("walk")
	elif velocity.y < 0:
		$AnimatedSprite2D.play("walk")
	elif velocity.y > 0:
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.play("idle")
	
	move_and_slide()
	
