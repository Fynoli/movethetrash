extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_pressed("mouse_3")):
		get_node("CollisionShape2D").disabled=false
	else:
		get_node("CollisionShape2D").disabled=true
	move_and_collide(get_local_mouse_position())
	pass
