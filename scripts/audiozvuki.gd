extends HSlider

const GLOBAL_VOLUME_SETTING = "audio/global_volume"
var default_value: float = 0.1
var global_volume: float # 1.0 = 100%; 0.5 = 50%, итп;

func _ready() -> void:
	global_volume = ProjectSettings.get_setting(GLOBAL_VOLUME_SETTING, default_value)
	self.value = global_volume * 100
	_restore_slider()
	_save_settings()

func _value_changed(new_value: float) -> void:
	_set_value(new_value * 0.01)
	_save_settings()

func _restore_slider() -> void:
	value = global_volume * 100

func _set_value(new_value: float) -> void:
	global_volume = new_value
	# print("Set global volume var to: " + str(global_volume))

func _save_settings():
	ProjectSettings.set_setting(GLOBAL_VOLUME_SETTING, global_volume)
	# print("Saved " + str(global_volume) + " to ProjectSettings.")
