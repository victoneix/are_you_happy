if(keyboard_check_pressed(ord("R"))) room_restart();

if(collected){
	room_goto(next_level);
}