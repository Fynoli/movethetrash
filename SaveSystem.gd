extends Node2D

var current_level = 1
var max_level_reached
export var max_level =5

var save_path="res://movethetrash.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_path)

# Called when the node enters the scene tree for the first time.
func _ready():
	max_level_reached=config.get_value("Max_level_reached","Level",max_level_reached)
	pass # Replace with function body.
	

func save_current_level(level):
	if level>max_level_reached and level<=max_level:
		config.set_value("Max_level_reached","Level",level)
		config.save(save_path)
		max_level_reached=level
	pass
	
func set_current_level(level):
	current_level=level
	pass

func get_current_level():
	return current_level
	pass
	
func get_max_level_reached():
	return max_level_reached
	pass
	
func get_max_level():
	return max_level
	pass
