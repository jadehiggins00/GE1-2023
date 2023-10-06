extends Node3D


const numDodecahedrons = 12  # Adjust the number of dodecahedrons in the circle here
const radius = 5.0  # Adjust the radius of the circle here

func _ready():
	for i in range(numDodecahedrons):
		var instance = load("res://sphere.tscn").instance()
		instance.rotation_degrees = Vector3(0, i * (360.0 / numDodecahedrons), 0)
		instance.translation = Vector3(radius * cos(deg_to_rad(i * (360.0 / numDodecahedrons))), 0, radius * sin(deg_to_rad(i * (360.0 / numDodecahedrons))))
		add_child(instance)


