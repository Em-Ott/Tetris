extends CharacterBody2D

const BLOCK_GRAVITY = 200

@export var axis = Vector2.ZERO
@export var down_velocity = 50
@export var left_velocity = -85
@export var right_velocity = 85
@export var degrees = 90

var can_move : bool = true

func _process(delta):
	move_piece()
	
func move_piece():
	if can_move == true:
		if Input.is_action_pressed("down_movement"):
			axis.y = down_velocity + BLOCK_GRAVITY
			can_move = false
		if Input.is_action_pressed("left_movement"):
			#85 is pretty good need to actually see if it works with floor collision tho :/
			axis.y = BLOCK_GRAVITY
			axis.x = left_velocity
			can_move = false
		if Input.is_action_pressed("right_movement"):
			axis.y = BLOCK_GRAVITY
			axis.x = right_velocity
			can_move = false
		if Input.is_action_pressed("rotate"):
			axis.y = BLOCK_GRAVITY
			rotation = degrees
			can_move = false
	move_and_slide()


func _on_timer_timeout():
	can_move = true
