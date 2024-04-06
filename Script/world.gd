extends Node2D
@onready var tile_map:TileMap = $TileMap
@onready var camera_2d:Camera2D = $Player/Camera2D


# Called when the node enters the scene tree for the first time.
func _ready()->void:
	#used矩形框 左上角position(x,y),右下角end(x,y)
	#var used = tile_map.get_used_rect()
	#print(used)
	#print(used.position)
	#print(used.end)
	## 一个图块大小
	#var tile_size = tile_map.tile_set.tile_size
	#print(tile_size)
	#camera_2d.limit_top = used.position.y * tile_size.y
	#print(camera_2d.limit_top)
	#camera_2d.limit_right = used.end.x * tile_size.x 
	#print(camera_2d.limit_right)
	#camera_2d.limit_bottom = used.end.y * tile_size.y 
	#print(camera_2d.limit_bottom)
	#camera_2d.limit_left = used.position.x * tile_size.x 
	#print(camera_2d.limit_left)
	camera_2d.reset_smoothing()
