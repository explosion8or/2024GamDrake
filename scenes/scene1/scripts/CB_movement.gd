extends CharacterBody2D


const SPEED = 300.0
const ACCEL = 40
const FRICTION_COEFF = .1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	var acceleration = input_direction * ACCEL
	var  friction = -velocity * FRICTION_COEFF
	velocity = velocity + acceleration + friction

func _physics_process(delta):
	get_input()
	move_and_slide()
