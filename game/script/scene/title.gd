extends Node2D

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    handle_mouse()
    
func handle_mouse():
    if Input.is_action_just_pressed('mouse_down'):
        var mouse = get_viewport().get_mouse_position()
        if Func.point_inside_rect_ui(mouse, UI.button_start):
            get_tree().change_scene_to_file('res://scene/field.tscn')
