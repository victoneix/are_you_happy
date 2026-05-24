spd = 2.2;
hspd = 0;
vspd = 0;

moving = function(){
	var _right = keyboard_check(ord("D"));
	var _left = keyboard_check(ord("A"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	
	hspd = (_right - _left)*spd;
	vspd = (_down - _up)*spd;
	
	show_debug_message(hspd);
	show_debug_message(vspd);

	move_and_collide(hspd, 0, obj_collision);
	move_and_collide(0, vspd, obj_collision);
}
