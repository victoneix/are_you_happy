audio_stop_sound(snd_solitude);
randomize();
cell = 32;
cell_h = room_width div cell;
cell_v = room_height div cell;

grid = ds_grid_create(cell_h, cell_v);
ds_grid_clear(grid, 0);

//var _seed_info = get_integer("Set your seed", 0);
//var _seed = 0;

//if(_seed_info <= 0){
//	_seed = irandom(99999999);
//} else{
//	_seed = _seed_info;
//}

random_set_seed(0);

var _npc_max = 9;
var _dir = irandom(3);
var _xx = cell_h div 2;
var _yy = cell_v div 2;
var _chances = 1;
var _steps = 400;

north = 1;
west = 2;
east = 4;
sul = 8;

var _tile_layer = layer_tilemap_get_id("wall");


for(var i = 0; i < _steps; i++){
	if(irandom(_chances) == _chances){
		_dir = irandom(3);
	}
	
	_xx += lengthdir_x(1, _dir * 90);
	_yy += lengthdir_y(1, _dir * 90);

	_xx = clamp(_xx, 2, cell_h - 2);
	_yy = clamp(_yy, 2, cell_v - 2);

	grid[# _xx,_yy] = 1;
}

for(var _xx = 0; _xx < cell_h; _xx++){
	for(var _yy = 0; _yy < cell_v; _yy++){
		if(grid[# _xx, _yy] == 0){
			var _north_t = grid[# _xx, _yy - 1] == 0;
			var _west_t = grid[# _xx - 1, _yy] == 0;
			var _east_t = grid[# _xx + 1, _yy] == 0;
			var _sul_t = grid[# _xx, _yy + 1] == 0;
			
			var _tile_index = _north_t * north + _west_t * west + _east_t * east + _sul_t * sul+1;
			
			tilemap_set(_tile_layer, _tile_index, _xx, _yy);
		}
	}
}


for(var _xx = 0; _xx < cell_h; _xx++){
	for(var _yy = 0; _yy < cell_v; _yy++){
		if(grid[# _xx, _yy] == 0){
			instance_create_layer(_xx * cell, _yy * cell, layer, obj_collision);
		}
		
		if(grid[# _xx, _yy] == 1){
			var _x1 = _xx * cell + cell / 2;
			var _y1 = _yy * cell + cell / 2;
			if(!instance_exists(obj_player)){
				instance_create_layer(_x1, _y1, layer, obj_player);
			}
			
			if(!instance_exists(obj_item)){
				if(point_distance(_x1, _y1, obj_player.x, obj_player.y) > 256){
					instance_create_layer(_x1, _y1, layer, obj_item);
				}
			}
			
			if(_npc_max > 0){
				var _chances = 16;
				if(irandom(_chances) == _chances && point_distance(_x1, _y1, obj_player.x, obj_player.y) > 128){
					instance_create_layer(_x1, _y1, layer, obj_npc);
					_npc_max--;
				}
			}
		}
	}
}

if(instance_exists(obj_item)){				
	show_debug_message("O objeto item foi criado!!!");
} else {
	show_debug_message("O objeto item não foi criado!!!");
}


