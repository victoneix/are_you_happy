var _mouse_sobre = position_meeting(mouse_x, mouse_y, obj_player);
var _mouse_click = mouse_check_button_pressed(mb_left);

if(_mouse_sobre){
	if(_mouse_click){
		if(my_text == noone){
			my_text = instance_create_layer(x, y, layer, obj_text);
			my_text.text = text;

		}else{
			instance_destroy(my_text);
			my_text = noone;
		}
	}
}