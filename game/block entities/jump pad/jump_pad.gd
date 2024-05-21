extends BaseBlockEntity


@onready var area = $Area2D


func _physics_process(delta):
	for body in area.get_overlapping_bodies():
		var player: BasePlayer= body
		player.add_effect(PlayerEffect.new(PlayerEffect.Type.JUMP_FORCE, 2, 1))
		

