draw_self();

draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_color(col);
draw_text_ext_transformed(x, y - sprite_height / 4, txt, 22, sprite_width, 1, 1, 0);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);
