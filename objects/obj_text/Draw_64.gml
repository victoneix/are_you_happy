var _margem = cam_w - sprite_get_width(spr_box);
draw_sprite(spr_box, 0, 0 + _margem/2, cam_h - 48);


pag_max = array_length(text) - 1;
var _size_text = string_length(text[pag]);
if(typing <= _size_text){
	word = string_copy(text[pag], 1, typing);
	typing++;
}

draw_set_font(fnt_text);
draw_text_ext_transformed(0 + (_margem/2 + 4), cam_h - 49, word, 8, 128 - 4, 1, 1, 0);
draw_set_font(-1);