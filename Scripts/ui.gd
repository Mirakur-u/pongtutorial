extends CanvasLayer

class_name UI

@onready var player_points_label: Label = $MarginContainer/PlayerPoints
@onready var enemy_points_label: Label = $MarginContainer/EnemyPoints


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_points_label.text = "%d" % 0
	enemy_points_label.text = "%d" %0

func update_enemy_points(points:int):
	enemy_points_label.text = "%d" % points
	

func update_player_points(points:int):
	player_points_label.text = "%d" % points
