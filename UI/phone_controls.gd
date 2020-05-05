extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_left_button_down():
	get_node("/root/global_values").phone_left_pressed=true
	pass # Replace with function body.
	



func _on_left_button_up():
	get_node("/root/global_values").phone_left_pressed=false
	pass # Replace with function body.


func _on_right_button_down():
	get_node("/root/global_values").phone_right_pressed=true
	pass # Replace with function body.


func _on_right_button_up():
	get_node("/root/global_values").phone_right_pressed=false
	pass # Replace with function body.


func _on_pause_pressed():
	get_node("/root/global_values").phone_pause=not get_node("/root/global_values").phone_pause
	pass # Replace with function body.


func _on_pause_mouse_entered():
	get_node("/root/global_values").on_UI=true
	pass # Replace with function body.


func _on_pause_mouse_exited():
	get_node("/root/global_values").on_UI=false
	pass # Replace with function body.
