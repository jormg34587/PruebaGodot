extends Node2D

@onready var audio_stream_player = $AudioStreamPlayer


func _ready():
	AudioManager.play_music(audio_stream_player, AudioManager.BIT_BIT_LOOP)
