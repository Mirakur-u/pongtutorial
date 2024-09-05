extends RigidBody2D

class_name EnemyPaddle

@export var ball: Ball
@export var paddle_speed = 35000



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed * delta
