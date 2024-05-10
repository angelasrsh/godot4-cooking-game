extends Node2D

var in_item: bool = false;
var is_dragging: bool = false;


func _process(_delta):
	if Input.is_action_just_pressed("hold"):
		if in_item:
			is_dragging = true;
	if Input.is_action_just_released("hold"):
		is_dragging = false;
		$Sprite2D.texture = load("res://icon.svg")
		
	if is_dragging:
		global_position = get_viewport().get_mouse_position()
		$Sprite2D.texture = load("res://graphics/grab_placeholder.png")


func _on_area_2d_mouse_entered():
	in_item = true;
	


func _on_area_2d_mouse_exited():
	in_item = false;
