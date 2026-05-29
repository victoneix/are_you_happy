var _mouse_click = mouse_check_button_pressed(mb_left);
if(start_dlg){
	if(my_text == noone){
		my_text = instance_create_layer(x, y, layer, obj_text);
		my_text.text = text;

	} else{
		if(_mouse_click){
			if(my_text.pag >= my_text.pag_max){
				instance_destroy(my_text);
				my_text = noone;
				start_dlg = false;
			} else{
				my_text.pag++;
				my_text.typing = 0;
			}
		}
	}
}


//else{
//	if(_mouse_click && my_text != noone){
//		instance_destroy(my_text);
//		my_text = noone;
//	}
//}

//if(my_text.pag >= my_text.pag_max){
//	instance_destroy(my_text);
//	my_text = noone;
//} else{
//	my_text.pag++;
//	my_text.typing = 0;
//}