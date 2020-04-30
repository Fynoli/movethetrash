extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused=false
	get_node("/root/SaveSystem").set_current_level(1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Inside_trashbin_area_body_entered(body):
	if body.is_in_group("trash"):
		get_node("level_cleared_window").show()
		get_tree().paused=true
	pass
