extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass

func _on_Ball_body_entered(body):
	if (body.get_groups().find("bumpers") != -1):
		apply_impulse(Vector2(0, 0), Vector2(body.position.x, position.y - body.position.y))
