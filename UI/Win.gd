extends Control



func _physics_process(_delta):
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	Global.timer_on = false
	$Time.text = "Total time: " +str(Global.text)


func _on_Play_pressed():
	Global.time = 0
	var _scene = get_tree().change_scene("res://UI/Main.tscn")
	


func _on_Quit_pressed():
	get_tree().quit()
