extends KinematicBody2D
export var motion_speed = 200
export var dead_zone=1
var  wheel_animator
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var volume=get_node("/root/global_values").get_fx_volume()
	get_node("moving").volume_db+=volume
	wheel_animator=get_child(2)
	wheel_animator.set_speed_scale(motion_speed/160)
	pass # Replace with function body.

func _physics_process(delta):
	var motion = Vector2()
	if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right") or abs(Input.get_accelerometer().x)>dead_zone:
		if not get_node("moving").playing:
			get_node("moving").play()
	if Input.is_action_pressed("move_left") or Input.get_accelerometer().x<-dead_zone:
		motion += Vector2(-1, 0)
		wheel_animator.play("spin_left")
	else:
		if Input.is_action_pressed("move_right") or Input.get_accelerometer().x>dead_zone:
			motion += Vector2(1, 0)
			wheel_animator.play("spin_right")
		else:
			wheel_animator.stop(false)
			get_node("moving").stop()
	
	motion = motion.normalized()*motion_speed*delta
	move_and_collide(motion)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
