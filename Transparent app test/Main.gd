extends Control


var following = false
var dragging_start_position = Vector2()

func _ready() -> void:
	get_tree().get_root().set_transparent_background(true)
	OS.window_per_pixel_transparency_enabled = true


func _on_bar_gui_input(event):
	if event is InputEventMouseButton:
		if event.get_button_index() == 1:
			following = !following
			dragging_start_position = get_local_mouse_position()


func _process(_delta):
	if following:
		OS.set_window_position(OS.window_position + get_global_mouse_position() - dragging_start_position)

	if Input.is_action_just_pressed("settings"):
		$PopupMenu.popup()


func _on_close_settings_pressed():
	$PopupMenu.hide()


func _on_Full_pressed():
	$AnimationPlayer.play("Full")


func _on_Half_pressed():
	$AnimationPlayer.play("half")


func _on_none_pressed():
	$AnimationPlayer.play("None")


func _on_Yt_pressed():
	OS.shell_open("https://www.youtube.com/")


func _on_Itch_io_pressed():
	OS.shell_open("https://www.itch.io/")


func _on_Gamejolt_pressed():
	OS.shell_open("https://gamejolt.com/")
