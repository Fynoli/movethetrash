extends KinematicBody2D
export var speed=50
export var offset=100
var returning=false
var original_x
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	original_x=position.x
	pass # Replace with function body.


func _physics_process(delta):
	var motion = Vector2()
	
	if not returning and position.x<original_x+offset:
		motion += Vector2(1, 0)
	else:
		returning=true
	
	if returning and position.x>original_x:
		motion += Vector2(-1, 0)
	else:
		returning=false
	
	motion = motion.normalized()*speed*delta
	move_and_collide(motion)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
