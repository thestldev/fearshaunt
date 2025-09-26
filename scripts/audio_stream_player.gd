extends Node

@onready var player: AudioStreamPlayer = $"."
const GLOBAL_VOLUME_SETTING = "audio/global_volume"
var default_value: float = 0.1

func _ready():
	# print("AudioStreamPlayer ready")
	
	
	var _vol = ProjectSettings.get_setting(GLOBAL_VOLUME_SETTING, default_value)
	player.volume_linear = _vol
	# print("Set volume to: " + str(_vol) + " for " + str(player))

	player.play()
