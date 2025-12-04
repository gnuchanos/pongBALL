extends Area2D

var ball_position: Vector2
var dist: float
static var PADDLE_SPEED := 500.0
var move: float

var playerHeight: float

func _ready() -> void:
	playerHeight = $"Panel".size.y

func _process(delta: float) -> void:
	ball_position = $"../ball".position
	dist = position.y - ball_position.y

	if dist != 0:
		var direction := sign(dist)
		
		if abs(dist) > PADDLE_SPEED * delta:
			move = PADDLE_SPEED * delta * direction
		else:
			move = dist
	else:
		move = 0

	position.y -= move

	position.y = clamp(position.y, playerHeight+37 / 2, 837.0 - 65.0)
