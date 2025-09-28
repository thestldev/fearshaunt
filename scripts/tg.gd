extends Button

const TG_LINK = "https://t.me/lazycatdev"

func _pressed() -> void:
	OS.shell_open(TG_LINK)
	
