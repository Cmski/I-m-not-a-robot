draw_set_colour(c_black);
draw_set_font(fnt_speech);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);

var shown_text = scr_typewriter_text(full_text, visible_chars, text_width);
draw_text(x, y, shown_text);