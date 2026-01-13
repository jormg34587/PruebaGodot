extends Area2D

@export var points: int

@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var timer = $Timer


func _on_area_entered(area):
	GameManager.update_score(points)
	SignalManager.score_updated.emit()
	AudioManager.play_sfx(audio_stream_player_2d, AudioManager.PICKUP)
	timer.start()
	visible = false


func _on_timer_timeout():
	queue_free()
