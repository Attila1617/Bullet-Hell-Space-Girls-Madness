extends Node2D

var bullet_scene = load("res://Scenes/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate(.1)
	var bullet = bullet_scene.instance()
	bullet.position = self.position
	bullet.rotation = self.rotation

	get_parent().add_child(bullet)
