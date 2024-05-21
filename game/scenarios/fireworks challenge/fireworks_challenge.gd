extends BaseScenario

@export var win_block: Block


func on_player_spawned():
	player.break_block.connect(break_block)


func break_block(block: Block):
	if block == win_block:
		await get_tree().create_timer(1).timeout
		win()
