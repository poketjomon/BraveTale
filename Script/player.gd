extends CharacterBody2D
@onready var sprite_2d = $Sprite2D
@onready var animation_player = $AnimationPlayer


var gravity := ProjectSettings.get("physics/2d/default_gravity") as float
var run_speed := 200.0
var jump_speed := -400.0
func _physics_process(delta):
	
	var direction :=Input.get_axis("left","right")
	velocity.x = direction*run_speed
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y += jump_speed
	velocity.y +=gravity*delta
	
	if is_on_floor():
		if direction!=0:
			animation_player.play("running")
		else:
			animation_player.play("idle")
	else:
		animation_player.play("jump")
	if direction < 0:
		sprite_2d.flip_h = true
	elif direction >0:
		sprite_2d.flip_h = false
	move_and_slide() 
