if(instance_exists(obj_text)){
	if(mouse_check_button_pressed(mb_left)){
		create_text++;
	}
}

if(create_text >= 2 && !instance_exists(obj_text)){
	show = true;
}

show_debug_message(create_text);