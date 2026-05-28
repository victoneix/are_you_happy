draw_set_font(fnt_title);
draw_set_halign(1);
draw_set_valign(1);
draw_text(room_width/2, room_height/2, "Are You Happy?");

draw_set_font(fnt_mini_text);
draw_set_color(c_gray);
draw_text(room_width/2, room_height - 18, "Press the z or x key to begin.");
draw_set_color(c_white);

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(0);