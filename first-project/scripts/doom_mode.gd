extends CheckButton

@export var doom_mode: bool = false

@onready var hell: Sprite2D = %Hell
@onready var btn_return: Button = $"../btn_return"

var mainMusic
var doomMusic
var originalVolume: int

func _ready():
	mainMusic = AudioServer.get_bus_index("Music")
	doomMusic = AudioServer.get_bus_index("DoomMode")
	originalVolume = AudioServer.get_bus_volume_db(mainMusic)

func _on_pressed() -> void:
	if doom_mode:
		doom_mode = false
		%Hell.set_visible(false)
		print("doom mode disabled")
		AudioServer.set_bus_volume_db(doomMusic, -80)
		AudioServer.set_bus_volume_db(mainMusic, originalVolume)
		btn_return.text = "RETURN TO MENU"
	else:
		doom_mode = true
		%Hell.set_visible(true)
		print("doom mode enabled")
		AudioServer.set_bus_volume_db(doomMusic, 0)
		AudioServer.set_bus_volume_db(mainMusic, -80)
		btn_return.text = "RIP AND TEAR"
	
