if (timer <= 0) exit;

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_timer);
draw_set_colour(c_black);

draw_text(x, y, ceil(timer / 60));