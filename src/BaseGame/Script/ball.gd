extends CharacterBody2D


func _physics_process(delta: float) -> void:
	velocity.x = GlovalVAR.SpeedX
	velocity.y = GlovalVAR.SpeedY
	move_and_slide()
