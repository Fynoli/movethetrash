extends Node2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var volume=get_node("/root/global_values").get_fx_volume()
	get_node("impact_1").volume_db+=volume
	get_node("impact_2").volume_db+=volume
	get_node("impact_3").volume_db+=volume
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_child(0).global_position.y > 800):
		queue_free()
#	pass


func _on_aple_body_body_entered(body):
	if body.is_in_group("bullet") :
		get_node("impact_"+str(randi()%3+1)).play()
	
	#print("manzana colisiono a "+str(get_node("aple_body").linear_velocity.y))
	pass # Replace with function body.
