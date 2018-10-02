extends RigidBody2D
var speed = 500
var direction = Vector2() 
var width
var height




func _ready():
    width = get_viewport_rect().size.x   
    height = get_viewport_rect().size.y
    position.y = 0
    position.x = width / 2 #place position au milieu de l'ecran

func _process(delta):
    pass
    
func _physics_process(delta):
	pass