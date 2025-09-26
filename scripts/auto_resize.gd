# auto_resize.gd
extends Node

var base_size = Vector2(1920, 1080)

func _ready():
	get_viewport().size_changed.connect(_on_resize)
	_on_resize()

func _on_resize():
	var screen_size = get_viewport().get_visible_rect().size
	var scale_factor = min(screen_size.x / base_size.x, screen_size.y / base_size.y)
	
	# Масштабируем весь рендер
	get_tree().root.content_scale_factor = scale_factor
