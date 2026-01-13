extends Control

@onready var start_button = $VBoxContainer/StartButton
@onready var high_score_label = $VBoxContainer/HighScoreLabel
@onready var audio_stream_player = $AudioStreamPlayer
@onready var sfx_button = $VBoxContainer/SFXButton
@onready var music_button = $VBoxContainer/MusicButton


func _ready():
	AudioManager.restart_audio()
	start_button.grab_focus()
	high_score_label.text = "High score: " + str(GameManager.high_score)

func _on_start_button_pressed():
	GameManager.load_next_level()


func _on_button_focus_entered():
	AudioManager.play_sfx(audio_stream_player, AudioManager.BUTTON_FOCUS)


func _on_quit_button_pressed():
	get_tree().quit()


func _on_sfx_button_pressed():
	AudioManager.toggle_sfx()
	if AudioManager.is_sfx_active:
		sfx_button.text = "sfx: on"
	else:
		sfx_button.text = "sfx: off"


func _on_music_button_pressed():
	AudioManager.toggle_music()
	if AudioManager.is_music_active:
		music_button.text = "music: on"
	else:
		music_button.text = "music: off"
