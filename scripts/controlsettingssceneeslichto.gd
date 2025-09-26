extends Control

func _ready():
	# Привязываем кнопки к функциям
	$Fullscreen.pressed.connect(_on_fullscreen_pressed)
	$Windowed.pressed.connect(_on_windowed_pressed)
	$"Borderless(okno bez ramki)".pressed.connect(_on_borderless_pressed)

# Переключение на полноэкранный режим
func _on_fullscreen_pressed():
	DisplayServer.window_set_mode(DisplayServer.WindowMode.WINDOW_MODE_FULLSCREEN)
	print("Режим: Fullscreen")

# Переключение на обычное оконное отображение
func _on_windowed_pressed():
	DisplayServer.window_set_mode(DisplayServer.WindowMode.WINDOW_MODE_WINDOWED)
	DisplayServer.window_set_size(Vector2(800, 600)) # задаем размер окна
	print("Режим: Windowed")

# Переключение на безрамочное окно
func _on_borderless_pressed():
	DisplayServer.window_set_mode(DisplayServer.WindowMode.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
	DisplayServer.window_set_size(Vector2(1920, 1080)) # размер на весь экран
	print("Режим: Borderless")
