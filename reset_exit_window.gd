extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("CenterContainer/VBoxContainer/reset_button").grab_focus()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("ui_cancel")):
		get_tree().paused=not get_tree().paused
		if(not visible):
			show()
		else:
			hide()
	pass


func _on_reset_button_pressed():
	get_tree().paused=false
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_back_to_menu_button_pressed():
	get_tree().paused=false
	get_tree().change_scene("res://TitleScreen.tscn")
	pass # Replace with function body.
