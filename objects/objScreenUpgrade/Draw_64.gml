draw_self();
draw_set_halign(fa_center);
draw_text_transformed(room_width / 2, 50, "You are now Level " + string(pc.level), 2, 3, 0);

draw_text(room_width / 2, 120, txt);
draw_set_halign(fa_left);