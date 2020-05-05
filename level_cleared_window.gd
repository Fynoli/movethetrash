extends Control
var current_level=1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var volume=get_node("/root/global_values").get_fx_volume()
	get_node("mouse_over").volume_db+=volume
	get_node("clicked").volume_db+=volume
	get_node("CenterContainer/VBoxContainer/next_level_utton").grab_focus()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_to_menu_button_pressed():
	get_node("clicked").play()
	get_tree().change_scene("res://TitleScreen.tscn")
	pass # Replace with function body.


func _on_next_level_utton_pressed():
	get_node("clicked").play()
	var save_system=get_node("/root/SaveSystem")
	if save_system.get_current_level() < save_system.get_max_level():
		save_system.save_current_level(save_system.get_current_level()+1)
		get_tree().change_scene("res://Mundo"+str(save_system.get_current_level()+1)+".tscn")
	pass # Replace with function body.


func _on_next_level_utton_focus_entered():
	get_node("mouse_over").play()
	pass # Replace with function body.


func _on_next_level_utton_mouse_entered():
	get_node("mouse_over").play()
	pass # Replace with function body.


func _on_back_to_menu_button_focus_entered():
	get_node("mouse_over").play()
	pass # Replace with function body.


func _on_back_to_menu_button_mouse_entered():
	get_node("mouse_over").play()
	pass # Replace with function body.
