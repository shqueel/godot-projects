extends AudioStreamPlayer2D

@onready var music: AudioStreamPlayer2D = $DoomMode

#@onready var doomcheck = get_tree().get_root().get_node("/root/Settings/MarginContainer/VBoxContainer2/CheckButton")

func _ready():
	var settingsnode = get_tree().get_root().find_node("Settings", true, false)
	settingsnode.connect("doomtime", self, "handledoomtime")
	
func handledoomtime():
	print("doom time activate")
