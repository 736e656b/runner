extends Area2D
var speed = 500
var direction = Vector2() 
var width
var height
const GRAVITY = 20
var acceleration = 1


func _ready():
	#position.y = 0
	position = get_viewport_rect().size / 2 #place position au milieu de l'ecran
	direction.x = 0 
	direction.y = 0
	direction = direction.normalized()
	width = get_viewport_rect().size.x   
	height = get_viewport_rect().size.y

func _process(delta):
	pass
func _physics_process(delta):
	acceleration += 0.5
	position.y += GRAVITY * delta * acceleration
	
	
	pass