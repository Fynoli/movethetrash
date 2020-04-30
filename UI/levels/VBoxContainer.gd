extends VBoxContainer
var levels_unlocked
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("HBoxContainer/Button").grab_focus()
	levels_unlocked=get_node("/root/SaveSystem").get_max_level_reached()
	
	if levels_unlocked>=1:
		get_node("HBoxContainer/Button").disabled=false
		get_node("HBoxContainer/Button/lock1").hide()
	if levels_unlocked>=2:
		get_node("HBoxContainer/Button2").disabled=false
		get_node("HBoxContainer/Button2/lock2").hide()
	if levels_unlocked>=3:
		get_node("HBoxContainer/Button3").disabled=false
		get_node("HBoxContainer/Button3/lock3").hide()
	if levels_unlocked>=4:
		get_node("HBoxContainer/Button4").disabled=false
		get_node("HBoxContainer/Button4/lock4").hide()
	if levels_unlocked>=5:
		get_node("HBoxContainer/Button5").disabled=false
		get_node("HBoxContainer/Button5/lock5").hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Mundo.tscn")
	pass # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("res://Mundo2.tscn")
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().change_scene("res://Mundo3.tscn")
	pass # Replace with function body.


func _on_Button4_pressed():
	get_tree().change_scene("res://Mundo4.tscn")
	pass # Replace with function body.


func _on_Button5_pressed():
	get_tree().change_scene("res://Mundo5.tscn")
	pass # Replace with function body.


func _on_Back_Button_pressed():
	get_tree().change_scene("res://TitleScreen.tscn")
	pass # Replace with function body.
