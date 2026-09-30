extends Node2D

var speed = 60
var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft


func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
	elif ray_cast_left.is_colliding():
		direction = 1
	
	position.x += speed * direction * delta
