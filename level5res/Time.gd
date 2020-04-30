extends Label
var time=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time=get_node("Timer").time_left
	if floor((time/60-floor(time/60))*60)<10:
		text="Tiempo: "+str(floor(time/60))+":0"+str(floor((time/60-floor(time/60))*60))
	else:
		text="Tiempo: "+str(floor(time/60))+":"+str(floor((time/60-floor(time/60))*60))
	pass
	pass


func _on_Timer_timeout():
	get_tree().reload_current_scene()
	pass # Replace with function body.
