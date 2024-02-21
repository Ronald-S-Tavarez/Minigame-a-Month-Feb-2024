extends Control

@onready var button_return : Button = $Margin/Center/Actions/Return;

func _ready() -> void:
	button_return.pressed.connect(_handle_button_pressed_return);


func _handle_button_pressed_return() -> void:
	get_tree().change_scene_to_file("res://Scene/Menu/Main.tscn");
