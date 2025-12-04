extends Node2D

var playerScore = 0
var cpuScore = 0

func _ready() -> void:
	$playerScore.text = str(playerScore)
	$cpuScore.text = str(cpuScore)

func _on_cpu_body_entered(body: Node2D) -> void:
	GlovalVAR.SpeedX *= -1
	GlovalVAR.SpeedY *= -1
func _on_player_body_entered(body: Node2D) -> void:
	GlovalVAR.SpeedX *= -1
	GlovalVAR.SpeedY *= -1

func _on_border_top_body_entered(body: Node2D) -> void:
	GlovalVAR.SpeedY *= -1
func _on_border_bottom_body_entered(body: Node2D) -> void:
	GlovalVAR.SpeedY *= -1

func _on_left_exit_area_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
func _on_right_exit_area_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
