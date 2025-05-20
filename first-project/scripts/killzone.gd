extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("You died")
	var dieSFX: AudioStreamPlayer2D = body.get_node("SFX/die")
	Engine.time_scale = 0.5
	dieSFX.playing = true
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
