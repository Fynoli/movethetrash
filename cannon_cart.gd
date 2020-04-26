extends KinematicBody2D
export var motion_speed = 200
var  wheel_animator
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	wheel_animator=get_child(2)
	wheel_animator.set_speed_scale(motion_speed/160)
	pass # Replace with function body.

func _physics_process(delta):
	var motion = Vector2()
	
	if (Input.is_action_pressed("move_left")):
		motion += Vector2(-1, 0)
		wheel_animator.play("spin_left")
	else:
		if (Input.is_action_pressed("move_right")):
			motion += Vector2(1, 0)
			wheel_animator.play("spin_right")
		else:
			wheel_animator.stop(false)
	
	motion = motion.normalized()*motion_speed*delta
	move_and_collide(motion)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
