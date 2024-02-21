@icon("res://Asset/Node/TitleLabel.svg")
class_name TitleLabel
extends Label

@export var bob_offset : int = 10;
@export var bob_duration : float = 2.0;
@onready var tween : Tween = self.create_tween();

func _ready() -> void:
	animate_title_bob();

func animate_title_bob() -> void:
	var base_position : Vector2 = self.position;
	var position_start : Vector2 = Vector2(
		base_position.x,
		base_position.y - bob_offset);
		
	var position_end : Vector2 = Vector2(
		base_position.x, 
		base_position.y + bob_offset);
		
	tween.tween_property(self, "position", position_end, bob_duration).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT);
	tween.tween_property(self, "position", position_start, bob_duration).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT);
	tween.set_loops();
	tween.play();
