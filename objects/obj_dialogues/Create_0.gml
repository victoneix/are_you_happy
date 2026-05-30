text = [""];
my_text = noone;
start_dlg = false;

if(distance){
	var _dis = point_distance(obj_player.x, obj_player.y, obj_item.x, obj_item.y);
	alarm[0] = _dis/2;
} else{
	alarm[0] = 60*8;
}
