extends Control

enum MenuAction {
	Play,
	Tutorial,
	Settings,
	Credits
};

@onready var button_list : Array[Button] = [
	$Margin/Center/Actions/Play,
	$Margin/Center/Actions/Tutorial,
	$Margin/Center/Actions/Settings,
	$Margin/Center/Actions/Credits
];

@export var hover_y_offset : int = 10;
@export var bob_offset : int = 5;
@export var hover_animation_duration : float = 1.0;
@export var bob_animation_duration : float = 0.5;

func _ready() -> void:
	# Set Focus
	button_list[MenuAction.Play].grab_focus();
	
	# Connect On Pressed Signals
	button_list[MenuAction.Play].pressed.connect(_handle_button_pressed_play);
	button_list[MenuAction.Tutorial].pressed.connect(_handle_button_pressed_tutorial);
	button_list[MenuAction.Settings].pressed.connect(_handle_button_pressed_settings);
	button_list[MenuAction.Credits].pressed.connect(_handle_button_pressed_credits);

func _handle_button_pressed_play() -> void:
	get_tree().change_scene_to_file("res://Scene/World.tscn");

func _handle_button_pressed_tutorial() -> void:
	get_tree().change_scene_to_file("res://Scene/Menu/Tutorial.tscn");

func _handle_button_pressed_settings() -> void:
	get_tree().change_scene_to_file("res://Scene/Menu/Settings.tscn");

func _handle_button_pressed_credits() -> void:
	get_tree().change_scene_to_file("res://Scene/Menu/Credits.tscn");
