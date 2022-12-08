extends CanvasLayer


func _ready():
	pass

func _physics_process(_delta):
	$Time.text = "Time: " + str(Global.text)
	$Score.text = "Target: " + str(get_node("/root/Game/Target_container").get_child_count())
