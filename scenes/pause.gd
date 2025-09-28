extends Node2D

func _exit_game():
	get_tree().quit()
	
func _show_pause_screen():
	# var _continue = Button.new()
	# _continue.text = "main screen"
	# 
	# var _to_main = Button.new()
	# _to_main.text = "main screen"
	# 
	# var _settings = Button.new()
	# _settings.text = "main screen"
	pass
	
	

func _input(event):
	if event.is_action_pressed("ui_cancel"):  # ui_cancel = ESC
		# Ваш код здесь
		print("ESC нажата!")
		_show_pause_screen()
		
