extends Node

var score = 0
@onready var score_label: Label = $ScoreLabel

func _ready():
	Engine.time_scale = 1

func _input(event):
	if event.is_action_pressed("restart"):
		#sfx.playing = true
		get_tree().reload_current_scene()

func add_point():
	
	score += 1
	score_label.text = "You collected " + str(score) + " coins."
	print(score)
