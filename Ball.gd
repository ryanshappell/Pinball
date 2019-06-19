extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
	
func _integrate_forces(state):
	if (state.get_contact_count() > 0 && (state.get_contact_collider_object(0) as Node).is_in_group("bumpers")):
		apply_impulse(Vector2(0, 0), 800 * state.get_contact_local_normal(0))