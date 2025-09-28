extends Button

var vsync: bool = true

func _ready() -> void:
	_update_vsync()

func _pressed() -> void:
	vsync = !vsync
	_update_vsync()
	_update_text()

func _update_vsync() -> void:
	DisplayServer.window_set_vsync_mode(
		DisplayServer.VSYNC_ENABLED 
		if vsync
		else DisplayServer.VSyncMode.VSYNC_DISABLED
	)
	
func _update_text() -> void:
	self.text = "Vsync on" if vsync else "Vsync off"
