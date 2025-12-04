extends Area2D


var winHeight: int
var playerHeight: int

static var paddleSpeed = 500

func _ready() -> void:
	winHeight = get_viewport_rect().size.y
	playerHeight = $"Panel".size.y

func _process(delta: float) -> void:
	if Input.is_action_pressed("w") or Input.is_action_pressed("ui_up"):
		position.y -= paddleSpeed * delta
	elif Input.is_action_pressed("s") or Input.is_action_pressed("ui_down"):
		position.y += paddleSpeed * delta

	position.y = clamp(position.y, playerHeight+37 / 2, 837.0-65)
