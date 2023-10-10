extends Node2D

@export var spawn_count : int = 200
var star_scene = preload("res://Loops Game/Scenes/star.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
		
		var star_size = randf_range(0.5,1)
		star.scale.x = star_size
		star.scale.y = star_size
		star.position.x = randi_range(-280, 280)
		star.position.y = randi_range(-150, 150)

