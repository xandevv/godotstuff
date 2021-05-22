extends Control






func _on_savecode_pressed():
	$Savecode.popup_centered()


func _on_loadcode_pressed():
	$Loadcode.popup_centered()







func _on_Savecode_file_selected(path):
	var f = File.new()
	f.open(path, 2)
	f.store_string($Code/TextEdit.text)


func _on_Loadcode_file_selected(path):
	var f = File.new()
	f.open(path, 1)
	$Code/TextEdit.text = f.get_as_text()


func _on_Fullscreen_pressed():
	$"Fullscreen code".play("Nowa animacja")


func _on_Close_pressed():
	$"Fullscreen code".play_backwards("Nowa animacja")
