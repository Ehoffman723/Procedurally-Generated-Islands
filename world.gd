extends Node2D

@export var treasure : PackedScene
@export var tile_map : TileMapLayer

func _ready():
	spawn_treasure()
	

func spawn_treasure():
	var map_size = tile_map.get_used_rect()
	
	var found_valid_tile = false
	var random_x : int
	var random_y : int
	
	while found_valid_tile == false:
		
		random_x = randi() % map_size.size.x
		random_y = randi() % map_size.size.y
		
		var tile_id = tile_map.get_cell_atlas_coords(Vector2i(random_x, random_y))
		
		print("Tile Coordinates: ", tile_map.map_to_local(Vector2(random_x, random_y)))
		print("Tile Coordinates: ", Vector2(random_x, random_y))
		print("Tile Atlas Coords: ", tile_id)
		
		if tile_id == Vector2i(0,0) or tile_id == Vector2i(1,0) or tile_id == Vector2i(2,0):
			var treasure_chest = treasure.instantiate()
			treasure_chest.position = tile_map.map_to_local(Vector2(random_x, random_y))
			add_child(treasure_chest)
			found_valid_tile = true


func _on_timer_timeout() -> void:
	$ColorRect.visible = false
