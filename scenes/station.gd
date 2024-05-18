extends Area2D

var type: String;

signal on_surface(station_type: String);


func _on_surface_area_body_entered(body):
	on_surface.emit(type);
