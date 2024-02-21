extends Control

@onready var return_button : Button = $Margin/Center/Actions/Button;

func _ready() -> void:
	return_button.pressed.connect(_handle_button_pressed_return);

func _handle_button_pressed_return() -> void:
	get_tree().change_scene_to_file("res://Scene/Menu/Main.tscn");
