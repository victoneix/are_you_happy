randomize();
cell = 32;
cell_h = room_width div cell;
cell_v = room_height div cell;

grid = ds_grid_create(cell_h, cell_v);
ds_grid_clear(grid, 0);

var _seed_info = get_integer("Set your seed", 0);
var _seed = 0;

if(_seed_info <= 0){
	_seed = irandom(99999999);
} else{
	_seed = _seed_info;
}

random_set_seed(_seed);

var _dir = irandom(3);
var _xx = cell_h div 2;
var _yy = cell_v div 2;
var _chances = 1;
var _steps = 400;

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
			instance_create_layer(_xx * cell, _yy * cell, layer, obj_collision);
		}
		
		if(grid[# _xx, _yy] == 1){
			if(!instance_exists(obj_player)){
				var _x1 = _xx * cell + cell / 2;
				var _y1 = _yy * cell + cell / 2;
				instance_create_layer(_x1, _y1, layer, obj_player);
			}
		}
	}
}


