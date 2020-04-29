extends Sprite
var original_scale_x
var original_length
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	original_scale_x=scale.x
	original_length=get_parent().damping
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale.x=original_scale_x*get_parent().damping/original_length
	pass
