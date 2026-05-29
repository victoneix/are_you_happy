global.soul_god++;
audio_play_sound(snd_col, 0, 0);
with(obj_map){
	collected = true;
}
instance_destroy();