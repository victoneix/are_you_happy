spd = 1.4;
hspd = 0;
vspd = 0;
sprite_index = spr_player_idle;

moving = function(){
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	
	var _moving_h = (_right - _left)*spd;
	var _moving_v = (_down - _up)*spd;
	
	hspd = _moving_h;
	vspd = _moving_v;
	
	if(_moving_h != 0 || _moving_v != 0){
		sprite_index = spr_player_walk;
	} else{
		sprite_index = spr_player_idle;
	}
	
	show_debug_message(hspd);
	show_debug_message(vspd);

	move_and_collide(hspd, 0, obj_collision);
	move_and_collide(0, vspd, obj_collision);
}
