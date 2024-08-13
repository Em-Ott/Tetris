extends Node2D

#Currently I have programmed it so I store the current and future piece

@export var L_Piece : PackedScene
@export var R_Piece: PackedScene
@export var S_Piece: PackedScene
@export var T_Piece: PackedScene
@export var I_Piece: PackedScene

const BLOCK_GRAVITY = 200

var rng = RandomNumberGenerator.new()
var current_piece : CharacterBody2D
var future_piece : CharacterBody2D
var first_turn : bool = true
	
func _ready():
	next_piece()

func next_piece():
	var random_number = rng.randi_range(0, 4)
	
	if not first_turn:
		current_piece = future_piece
		current_piece.position = Vector2(300.0, 570.0)
		$".".add_child(current_piece)
	
	#The random piece selection works but why can't I get my piece to show up?
	if random_number == 0:
		future_piece = L_Piece.instantiate()
	if random_number == 1:
		future_piece = R_Piece.instantiate()
	if random_number == 2:
		future_piece = S_Piece.instantiate()
	if random_number == 3:
		future_piece = T_Piece.instantiate()
	if random_number == 4:
		future_piece = I_Piece.instantiate()
	
	if first_turn:
		first_turn = false
		next_piece()

func _process(delta):
	move_piece()
	current_piece.position.y += BLOCK_GRAVITY * delta
	#use collision areas for floor and ceiling?    
	
func move_piece():
	if Input.is_action_pressed("down_movement"):
		current_piece.position.y += 5
	if Input.is_action_pressed("left_movement"):
		current_piece.position.x -= 10
	if Input.is_action_pressed("right_movement"):
		current_piece.position.x += 10
	if Input.is_action_pressed("rotate"):
		current_piece.rotation_degrees += 90


