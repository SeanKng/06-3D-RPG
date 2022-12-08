extends Node

var time = 0
var timer_on = false
var text = ""

var score = 0


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS


func _unhandled_input(_event):
	if Input.is_action_just_pressed("menu"):
		Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
		var menu = get_node_or_null("/root/Game/UI/Menu")
		if menu != null:
			if menu.visible:
				get_tree().paused = false
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
				timer_on = true
				menu.hide()
			else:
				get_tree().paused = true
				Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
				timer_on = false
				menu.show()



func _process(delta):
	if timer_on == true:
		time += delta
		
	var secs = fmod(time, 60)
	var mins = fmod(time, 60*60) / 60	
	var hour = fmod(fmod(time, 3600*60) /3600,24)
		
	var time_passed = "%02d : %02d : %02d" % [hour ,mins, secs]	
	text = time_passed
		
	pass
