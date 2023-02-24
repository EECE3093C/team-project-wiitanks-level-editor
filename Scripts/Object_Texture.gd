extends TextureRect

export (PackedScene) var this_scene

onready var object_cursor = get_node("/root/Main/Editor_Objects")
onready var cursor_sprite = object_cursor.get_node("Sprite")
func _ready():
	connect("gui_input" ,self, "_object_clicked")
	pass # Replace with function body.

func _object_clicked(event):
	if(event is InputEvent):
		if(event.is_action_pressed("mb_left")):
			object_cursor.current_object = this_scene
			cursor_sprite.texture = texture
	pass

