extends KinematicBody2D

export var trigger: String
var start: Vector2

func _ready():
	start = position

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if (Input.is_action_pressed(trigger)):
		position = lerp(position, Vector2(start.x, start.y + 50), 0.05)
	else:
		position = lerp(position, start, 0.3)