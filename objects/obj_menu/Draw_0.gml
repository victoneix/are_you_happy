draw_set_font(fnt_title);
draw_set_halign(1);
draw_set_valign(1);

draw_text(room_width/2, room_height/2, "Are You Happy?");

draw_set_font(fnt_mini_text);
draw_set_color(c_gray);

draw_text(room_width/2, room_height - 32, "created by victoneix © 2026");
draw_text(room_width/2, room_height - 12, "Press the z or x key to begin.");

draw_set_color(c_white);
draw_set_halign(0);
draw_set_valign(0);

draw_set_color(c_gray);
draw_text(2, -7, "Version (1.0.0-release)");
draw_set_color(c_white);
draw_set_font(-1);
