var _margem = cam_w - sprite_get_width(spr_box)
draw_sprite(spr_box, 0, 0 + _margem/2, cam_h - 48);

draw_set_font(fnt_text);
draw_text_ext_transformed(0 + (_margem - 13), cam_h - 48, text, 0, 2222, 0.34, 0.34, 0);
draw_set_font(-1);