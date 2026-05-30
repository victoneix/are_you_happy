if(instance_exists(obj_final_text)){
	if(mouse_check_button_pressed(mb_left)){
		create_text++;
	}
}

if(create_text >= 4 && !instance_exists(obj_final_text)){
	show = true;
}

show_debug_message(create_text);