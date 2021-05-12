extends Node2D




func _on_Startmenu_pressed():
	$Animtions/Startmenu.play("Startmenu")


func _on_Desktop_pressed():
	$Animtions/Startmenu.play_backwards("Startmenu")


func _on_Settings2_pressed():
	$Startmenu/Options.popup_centered()
	$Animtions/Settingsonoff.play("Settingsonoff")


func _on_closeopt_pressed():
	$Animtions/Settingsonoff.play_backwards("Settingsonoff")


func _on_Settings_pressed():
	$Animtions/Startmenu.play_backwards("Startmenu")
	$Startmenu/Options.popup_centered()
	$Animtions/Settingsonoff.play("Settingsonoff")


func _on_on_pressed():
	$Animtions/Settings.play("transparent taskbar")


func _on_off_pressed():
	$Animtions/Settings.play_backwards("transparent taskbar")
