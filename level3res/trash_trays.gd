extends Node2D
var tray1filled=0
var tray2filled=0
var tray3filled=0
var tray1others=0
var tray2others=0
var tray3others=0
var not_won=true

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tray1filled==2 and tray1others==0 and tray2filled==2 and tray2others==0 and tray3filled==2 and tray3others==0 and not_won:
			not_won=false
			get_node("Timer").start(-1)
	pass


func _on_Timer_timeout():
	if tray1filled==2 and tray1others==0 and tray2filled==2 and tray2others==0 and tray3filled==2 and tray3others==0:
		get_parent().get_node("level_cleared_window").show()
		get_tree().paused=true
	else:
		not_won=true
	pass # Replace with function body.


func _on_tray_1_area_body_entered(body):
	if body.is_in_group("organic"):
		tray1filled+=1
	else:
		tray1others+=1
	pass # Replace with function body.


func _on_tray_1_area_body_exited(body):
	if body.is_in_group("organic"):
		tray1filled-=1
	else:
		tray1others-=1
	pass # Replace with function body.


func _on_tray_2_area_body_entered(body):
	if body.is_in_group("inorganic"):
		tray2filled+=1
	else:
		tray2others+=1
	pass # Replace with function body.


func _on_tray_2_area_body_exited(body):
	if body.is_in_group("inorganic"):
		tray2filled-=1
	else:
		tray2others-=1
	pass # Replace with function body.


func _on_tray_3_area_body_entered(body):
	if body.is_in_group("inorganic"):
		tray3filled+=1
	else:
		tray3others+=1
	pass # Replace with function body.


func _on_tray_3_area_body_exited(body):
	if body.is_in_group("inorganic"):
		tray3filled-=1
	else:
		tray3others-=1
	pass # Replace with function body.
