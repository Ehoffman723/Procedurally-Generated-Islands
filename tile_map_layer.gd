extends TileMapLayer

@onready var treasue = preload("res://treasure.tscn")

func spawn_treasure(tile_position: Vector2):
	treasue.instance(tile_position)
	
func generate_treasure() -> void:
	for tile_position in get_used_cells():
		if get_cell_source_id(tile_position) == tile_set.find_tile_by_name("grass"):
			spawn_treasure(tile_position)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generate_treasure()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
