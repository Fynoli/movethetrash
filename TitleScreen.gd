extends Control
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
	get_tree().paused=false
	get_node("Menu/CenterRow/Buttons/NewGameButton").grab_focus()
	can= load("res://can.tscn")
	trashbag=load("res://trashbag.tscn")
	bottle=load("res://bottle.tscn")
	banana=load("res://banana.tscn")
	aple=load("res://aple.tscn")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_NewGameButton_pressed():
	get_tree().change_scene("res://Mundo.tscn")
	pass # Replace with function body.


func _on_ExitButton_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Falling_trash_timer_timeout():
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
	get_node("Background").add_child(fallingtrash)
	fallingtrash.position=Vector2(rand_range(10,1270),-100)
	fallingtrash.get_child(0).add_torque(rand_range(-200,200))


func _on_SelectLevelButton_pressed():
	get_tree().change_scene("res://LevelsScreen.tscn")
	pass # Replace with function body.
