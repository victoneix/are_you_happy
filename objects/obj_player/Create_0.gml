hspd = 0;
vspd = 0;

move_dir = 0;
move_spd = 0;
move_spd_max = 2;
acc = .3;
dcc = .3;

moving = function(){
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	
	var moving_h = _right - _left != 0;
	var moving_v = _down - _up != 0;
	
	if(moving_h){
		move_dir = point_direction(0, 0, _right - _left, _down - _up);
		move_spd = approach(move_spd, move_spd_max, acc);
	} else if(moving_v){
		move_dir = point_direction(0, 0, _right - _left, _down - _up);
		move_spd = approach(move_spd, move_spd_max, acc);
	} else{
		move_spd = approach(move_spd, 0, dcc);
	}
	
	hspd = lengthdir_x(move_spd, move_dir);
	vspd = lengthdir_y(move_spd, move_dir);
	
	x+=hspd;
	y+=vspd;
}

approach = function(val1 = 0, val2 = 0, amount = 0){
	if(val1 < val2){
		val1 += amount
		if(val1 > val2)
			return val2;
	} else{
		val1 -= amount
		if(val1 < val2)
			return val2;
	}
	return val1;
}