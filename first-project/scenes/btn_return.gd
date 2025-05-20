extends Button




func _on_pressed() -> void:
	if text == "RIP AND TEAR":
		get_tree().change_scene_to_file("res://scenes/doom_MAIN.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
