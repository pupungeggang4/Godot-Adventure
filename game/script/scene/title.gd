extends Node2D

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    handle_mouse()
    
func handle_mouse():
    pass

func _on_color_rect_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().change_scene_to_file('res://scene/field.tscn')

func _on_button_collection_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().change_scene_to_file('res://scene/collection.tscn')

func _on_button_quit_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            get_tree().quit()
