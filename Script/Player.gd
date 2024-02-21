extends CharacterBody2D

@export var movement_speed : float = 100.0;
@export var jump_impulse : float = -400.0;

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity");

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta;
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_impulse;
	
	var input_direction := Input.get_axis("move_left", "move_right");
	
	if input_direction:
		velocity.x = input_direction * movement_speed;
	else:
		velocity.x = move_toward(velocity.x, 0, movement_speed);
	
	move_and_slide();
