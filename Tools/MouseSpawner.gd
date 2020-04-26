extends Node2D
var can
var trashbag
var aple
var bottle
var banana
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	can= load("res://can.tscn")
	trashbag=load("res://trashbag.tscn")
	bottle=load("res://bottle.tscn")
	banana=load("res://banana.tscn")
	aple=load("res://aple.tscn")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_2"):
		var randID=randi()%5+1
		var fallingtrash
		if(randID==1):
			fallingtrash=can.instance()
		if(randID==2):
			fallingtrash=aple.instance()
		if(randID==3):
			fallingtrash=bottle.instance()
		if(randID==4):
			fallingtrash=banana.instance()
		if(randID==5):
			fallingtrash=trashbag.instance()
		add_child(fallingtrash)
		fallingtrash.position=get_local_mouse_position()
	pass
