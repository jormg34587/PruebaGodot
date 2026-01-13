extends Camera2D


var player


func _ready():
	player = get_tree().get_first_node_in_group("player")


func _process(delta):
	if not player:
		return
	
	position = player.position
