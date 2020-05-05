extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var volume=get_node("/root/global_values").get_music_volume()
	get_node("menu_theme").volume_db+=volume
	get_node("level_theme_1").volume_db+=volume
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func play_menu_theme():
	get_node("menu_theme").play()
	pass
	
func play_level_theme():
	get_node("level_theme_1").play()
	pass
	
func stop_menu_theme():
	get_node("menu_theme").stop()
	pass
	
func stop_level_theme():
	get_node("level_theme_1").stop()
	pass

func _on_level_theme_1_finished():
	get_node("level_theme_1").play()
	pass # Replace with function body.
