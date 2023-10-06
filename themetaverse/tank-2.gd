extends CharacterBody3D

@export var speed:float = 5

# initialise code
func _ready():
	pass
	
func _process(delta):
	var pos = transform.origin
	print("position" + str(pos))
	pos.z -= 1
	transform.origin = pos
	
