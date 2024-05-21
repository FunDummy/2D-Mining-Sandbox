extends Node2D

@onready var blade_left = $"Blade Left"
@onready var blade_right = $"Blade Right"

var flip: bool= false

func _on_timer_timeout():
	flip= not flip
	
	if not flip:
		blade_left.scale.y= 1.0
		blade_right.scale.y= 1.0
	else:
		blade_left.scale.y= 0.5
		blade_right.scale.y= 0.5
		
