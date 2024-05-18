extends Node2D

var in_item: bool = false;
var is_dragging: bool = false;

#Sprite image when being dragged
@export var dragSprite: Texture2D;

var staticSprite: Texture2D;

func _ready():
	staticSprite = $Sprite2D.texture;


func _process(_delta):
	if Input.is_action_just_pressed("hold"):
		if in_item:
			is_dragging = true;
	if Input.is_action_just_released("hold"):
		is_dragging = false;
		$Sprite2D.texture = staticSprite;
		
	if is_dragging:
		global_position = get_viewport().get_mouse_position()
		$Sprite2D.texture = dragSprite;


func _on_area_2d_mouse_entered():
	in_item = true;
	


func _on_area_2d_mouse_exited():
	in_item = false;
