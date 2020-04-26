extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var bullet_power = 500 # Pixels/second
export var correction_angle =0.1
export var bullet_spawn_distance_from_cannon =75
var mouse_position
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("mouse_1")):
		get_child(0).frame=0
		get_child(0).play("shooting",false)
		var projectile = load("res://bullet.tscn")
		var bullet = projectile.instance()
		get_parent().get_parent().add_child(bullet)
		bullet.position=Vector2(global_transform.origin.x+sin(rotation)*bullet_spawn_distance_from_cannon,global_transform.origin.y-cos(rotation)*bullet_spawn_distance_from_cannon)
		bullet.get_node("bullet_body").apply_central_impulse(Vector2(sin(rotation)*bullet_power,-cos(rotation)*bullet_power))

func _physics_process(delta):
	mouse_position= get_local_mouse_position()
	rotate(mouse_position.angle()+correction_angle)


func _on_cannon_sprites_animation_finished():
	get_child(0).play("idle")
