extends Node2D

var player_points = 0
var enemy_points = 0

@onready var enemy_paddle: EnemyPaddle = $EnemyPaddle
@onready var paddle: RigidBody2D = $Paddle
@onready var ball: Ball = $Ball
@onready var ui: UI = $UI


func _on_left_goal_point_scored():
	enemy_points += 1
	ui.update_enemy_points(enemy_points)
	reset_game_state()




func _on_right_goal_point_scored():
	player_points += 1
	ui.update_player_points(player_points)
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 0
	#enemy_paddle.position.x = 1070
	paddle.global_position.y = 0
	#paddle.position.x = -1050
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	paddle.linear_velocity = Vector2.ZERO
	enemy_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
