extends CSGSphere3D

const num_of_spheres = 12
const circle_radius = 5.0

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(num_of_spheres):
		var instance = load("res://lab2.tscn").instance()  # Load and create an instance of your dodecahedron scene
		instance.rotation_degrees = Vector3(0, i * (360.0 / num_of_spheres), 0)
		instance.translation = Vector3(circle_radius * cos(deg_to_rad(i * (360.0 / num_of_spheres))), 0, radius * sin(deg_to_rad(i * (360.0 / num_of_spheres))))
		add_child(instance)
