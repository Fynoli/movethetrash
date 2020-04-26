extends Node2D
var tray1_filled =0
var tray2_filled =0
var tray3_filled =0
var not_won=true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tray1_filled==1 and tray2_filled==1 and tray3_filled==1 and not_won:
		not_won=false
		get_node("Timer").start(-1)
	pass


func _on_trash_area3_body_entered(body):
	if body.is_in_group("trash"):
		tray3_filled=tray3_filled+1
	pass # Replace with function body.

func _on_trash_area3_body_exited(body):
	if body.is_in_group("trash"):
		tray3_filled=tray3_filled-1
	pass # Replace with function body.
	

func _on_trash_area2_body_entered(body):
	if body.is_in_group("trash"):
		tray2_filled=tray2_filled+1
	pass # Replace with function body.


func _on_trash_area2_body_exited(body):
	if body.is_in_group("trash"):
		tray2_filled=tray2_filled-1
	pass # Replace with function body.


func _on_trash_area1_body_entered(body):
	if body.is_in_group("trash"):
		tray1_filled=tray1_filled+1
	pass # Replace with function body.
	

func _on_trash_area1_body_exited(body):
	if body.is_in_group("trash"):
		tray1_filled=tray1_filled-1
	pass # Replace with function body.


func _on_Timer_timeout():
	if tray1_filled==1 and tray2_filled==1 and tray3_filled==1:
		get_parent().get_node("level_cleared_window").show()
		get_tree().paused=true
	else:
		not_won=true
	pass # Replace with function body.
