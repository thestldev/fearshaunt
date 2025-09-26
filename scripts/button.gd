extends Button
@onready var click_sound = $ClickSound

const GLOBAL_VOLUME_SETTING = "audio/global_volume"
var default_value: float = 0.1

func _on_pressed() -> void:
	var _vol = ProjectSettings.get_setting(GLOBAL_VOLUME_SETTING, default_value)
	click_sound.volume_linear = _vol
	print("click from " + name)
	click_sound.play()
	get_tree().change_scene_to_file("res://scenes/" + name.to_lower() + ".tscn")
	
