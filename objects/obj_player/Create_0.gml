hspd = 0;
vspd = 0;

move_dir = 0;
move_spd = 0;
move_spd_max = 2;
acc = .6;
dcc = .6;

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
	
}

collision = function(){
	repeat(abs(hspd)){
		if(place_meeting(x+sign(hspd), y, obj_collision)){
			hspd = 0;
			break;
		} else{
			x+=sign(hspd)
		}
	}
	
	repeat(abs(vspd)){
		if(place_meeting(x, y+sign(vspd), obj_collision)){
			vspd = 0;
			break;
		} else{
			y+=sign(vspd)
		}
	}
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