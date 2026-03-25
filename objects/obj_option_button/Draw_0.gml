draw_self();

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_set_alpha(image_alpha);
draw_text(x, y - 2, text);
draw_set_alpha(1);