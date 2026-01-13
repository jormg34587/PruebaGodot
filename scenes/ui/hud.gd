extends Control

@onready var lives_label = $MarginContainer/LivesLabel
@onready var score_label = $MarginContainer/ScoreLabel


func _ready():
	SignalManager.score_updated.connect(_on_score_updated)
	lives_label.text = "Lives: " + str(GameManager.lives)
	_on_score_updated()


func _on_score_updated():
	score_label.text = "Score: " + str(GameManager.score)
