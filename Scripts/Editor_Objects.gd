extends Node2D

var can_place = true

onready var level = get_node("/root/Main/Level")

var current_object
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	global_position = get_global_mouse_position()
	
	if (current_object != null and can_place and Input.is_action_just_pressed("mb_left")):
		var new_object = current_object.instance()
		level.add_child(new_object)
		new_object.global_position = get_global_mouse_position()
	
	pass
