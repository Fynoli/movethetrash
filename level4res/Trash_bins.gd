extends Node2D
var trashbin1amount=0
var trashbin2amount=0
var won=false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if trashbin1amount==8 and trashbin2amount==8 and won==false:
		won=true
		get_node("Timer").start()
	pass


func _on_trash_bin_area_body_entered(body):
	if body.is_in_group("trash"):
		trashbin1amount+=1
		get_node("trash_bin/trash_collected_1").text=str(trashbin1amount)
	pass # Replace with function body.
	
	
func _on_trash_bin_area_body_exited(body):
	if body.is_in_group("trash"):
		trashbin1amount-=1
		get_node("trash_bin/trash_collected_1").text=str(trashbin1amount)
	pass # Replace with function body.


func _on_trash_bin2_area_body_entered(body):
	if body.is_in_group("trash"):
		trashbin2amount+=1
		get_node("trash_bin2/trash_collected_2").text=str(trashbin2amount)
	pass # Replace with function body.


func _on_trash_bin2_area_body_exited(body):
	if body.is_in_group("trash"):
		trashbin2amount-=1
		get_node("trash_bin2/trash_collected_2").text=str(trashbin2amount)
	pass # Replace with function body.


func _on_Timer_timeout():
	if trashbin1amount==8 and trashbin2amount==8:
		get_parent().get_node("level_cleared_window").show()
		get_tree().paused=true
	else:
		won=false
	pass # Replace with function body.
