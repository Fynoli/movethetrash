extends Node2D
export var fx_volume=0.3
export var music_volume=0.4
export var dbs_of_increment_decrement=50

#controles
var phone_left_pressed=false
var phone_right_pressed=false
var phone_pause=false
var on_UI=false

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

func get_fx_volume():
	return fx_volume*dbs_of_increment_decrement
	pass
	
func get_music_volume():
	return music_volume*dbs_of_increment_decrement
	pass
	
func increase_fx_volume():
	if fx_volume<1:
		fx_volume+=0.1
	pass
	
func increase_music_volume():
	if music_volume<1:
		music_volume+=0.1
	pass
	
func decrease_fx_volume():
	if fx_volume>-1:
		fx_volume-=0.1
	pass
	
func decrease_music_volume():
	if music_volume>-1:
		music_volume-=0.1
	pass
