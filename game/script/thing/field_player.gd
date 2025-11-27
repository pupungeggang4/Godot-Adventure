extends CharacterBody2D

@export var speed = 320.0;

func _ready() -> void:
    pass

func _physics_process(delta: float) -> void:
    if GVar.state == '':
        var direction = Input.get_vector("left", "right", "up", "down")
        velocity = direction * speed
        move_and_slide()
