extends Node2D
var points=0
export var objetive=3000
var won=false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if points>=objetive and not won:
		won=true
		get_parent().get_node("level_cleared_window").show()
		get_tree().paused=true
	pass


func _on_saw_area_1_body_entered(body):
	if (body.is_in_group("trash")):
		get_node("trash_destruction").global_position=body.get_global_position()
		get_node("trash_destruction").emitting=true;
		body.set_position(Vector2(0,800))
		points+=50
		get_parent().get_node("Points").text="Puntos: "+str(points)
	pass # Replace with function body.


func _on_saw_area_2_body_entered(body):
	if (body.is_in_group("trash")):
		get_node("trash_destruction").global_position=body.get_global_position()
		get_node("trash_destruction").emitting=true;
		body.set_position(Vector2(0,800))
		points+=75
		get_parent().get_node("Points").text="Puntos: "+str(points)
	pass # Replace with function body.


func _on_saw_area_3_body_entered(body):
	if (body.is_in_group("trash")):
		get_node("trash_destruction").global_position=body.get_global_position()
		get_node("trash_destruction").emitting=true;
		body.set_position(Vector2(0,800))
		points+=100
		get_parent().get_node("Points").text="Puntos: "+str(points)
	pass # Replace with function body.
