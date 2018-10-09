extends RigidBody2D
var speed = 500
var direction = Vector2() 
var width
var height
var jump= 50
var gravity = 40
var poulain = 1



func _ready():
    width = get_viewport_rect().size.x   
    height = get_viewport_rect().size.y
    position.y = 0
    position.x = width / 2 #place position au milieu de l'ecran

func _process(delta):
	gravity *= 1.08
	jump *= 0.935
	position.y += gravity * delta
	position.y += -jump * delta
	
	if position.y > height/1.5:
		gravity = 0
		jump = 0
		poulain = 1
		
    
func _physics_process(delta):
	
	
	
	
	
	pass
	
	if Input.is_action_pressed("ui_up") and poulain == 1:
		poulain = 0
		gravity = 40
		jump=1500
		