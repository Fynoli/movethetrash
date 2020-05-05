extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var bullet_power = 500 # Pixels/second
export var correction_angle =0.1
export var bullet_spawn_distance_from_cannon =75
export var joystick_deadzone=0.5
export var laser_lenght=1000
var mouse_position
# Called when the node enters the scene tree for the first time.
func _ready():
	var volume=get_node("/root/global_values").get_fx_volume()
	get_node("shot").volume_db+=volume
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_1"):
		Input.start_joy_vibration(0,0.1,0,0.25)
		get_node("shot").play()
		get_child(1).frame=0
		get_child(1).play("shooting",false)
		var projectile = load("res://bullet.tscn")
		var bullet = projectile.instance()
		get_parent().get_parent().add_child(bullet)
		bullet.position=Vector2(global_transform.origin.x+sin(rotation)*bullet_spawn_distance_from_cannon,global_transform.origin.y-cos(rotation)*bullet_spawn_distance_from_cannon)
		bullet.get_node("bullet_body").apply_central_impulse(Vector2(sin(rotation)*bullet_power,-cos(rotation)*bullet_power))

func _physics_process(delta):
	var joyX=Input.get_joy_axis(0,JOY_AXIS_2)# -1 izquierda   1 derecha
	var joyY=Input.get_joy_axis(0,JOY_AXIS_3)# -1 arriba  1 abajo
	#print("X :"+str(joyX)+"  Y:"+str(joyY))
	var rad=0
	if joyX>0:
		rad=atan(joyY/joyX)+PI/2
	elif joyX<0:
		rad=atan(joyY/joyX)+PI+PI/2
	elif joyX==0:
		if joyY>=0:
			rad=PI
		else:
			rad=2*PI
	
	
	
	#print(str(Vector2(joyX,joyY).length()))
	mouse_position= get_local_mouse_position()
	if Vector2(joyX,joyY).length()<joystick_deadzone:
		rotate(mouse_position.angle()+correction_angle)
		get_node("laser").hide()
	else:
		get_node("laser").show()
		rotation=rad


func _on_cannon_sprites_animation_finished():
	get_child(1).play("idle")
