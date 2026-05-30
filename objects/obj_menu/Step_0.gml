var _key_begin = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X"));
if(_key_begin) {
	room_goto(rm_lavel_01);
	audio_play_sound(snd_click, 0, 0);
}