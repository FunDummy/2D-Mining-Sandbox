extends HandItemObject


@export var on_color: Color
@export var off_color: Color

@onready var light: Polygon2D = $Light


func _physics_process(delta):
	var world: World= get_player().get_world()

	var tile_pos: Vector2i= world.local_to_map(global_position)
	
	var found_ore: bool= false
	
	for y in range(1, 10):
		var pos: Vector2i= tile_pos + Vector2i(0, y)
		
		if not world.is_air_at(pos) and world.get_block(pos).has_tag("ore_blocks"):
			found_ore= true
			break
	
	light.color= on_color if found_ore else off_color
