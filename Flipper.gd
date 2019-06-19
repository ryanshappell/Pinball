extends KinematicBody2D

export var trigger: String
export var direction: int
var startRotation: float
var desiredRotation: float = deg2rad(90.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	startRotation = rotation
	print(rad2deg(rotation))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if (Input.is_action_pressed(trigger)):
		desiredRotation = startRotation + deg2rad(direction * 45.0)
	else:
		desiredRotation = startRotation
	rotation = lerp(rotation, desiredRotation, 0.3)
	
