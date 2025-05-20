extends Control


func _on_start_pressed() -> void:
	print("start pressed")
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_settings_pressed() -> void:
	print("settings pressed")
	get_tree().change_scene_to_file("res://scenes/settings.tscn")
