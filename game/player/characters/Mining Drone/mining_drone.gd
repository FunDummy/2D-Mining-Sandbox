extends BasePlayer

@onready var animation_player_hand = $AnimationPlayer


func movement(delta):
	fly(delta)


func subscribe_hand_action_finished(action_name: String, method: Callable):
	assert(animation_player_hand.has_animation(action_name))
	animation_player_hand.animation_finished.connect(method, CONNECT_ONE_SHOT)


func on_hand_action(action_name: String):
	animation_player_hand.play(action_name)


func on_hand_action_finished():
	animation_player_hand.play("RESET")


func on_start_mining():
	animation_player_hand.play("mine")


func on_stop_mining():
	animation_player_hand.play("RESET")
