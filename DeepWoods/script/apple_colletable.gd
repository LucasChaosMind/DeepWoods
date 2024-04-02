extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	fallingFromTree()

func fallingFromTree():
	$AnimationPlayer.play("FallingFromTree")
	await get_tree().create_timer(1.5).timeout
	$AnimationPlayer.play("Fade")
	print("+1 Apple")
	await get_tree().create_timer(0.3).timeout
	queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
