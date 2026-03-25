draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fnt_text_box);
draw_set_colour(c_black);

var _txt = text;

if (blink) _txt = string(text) + "|";

draw_text(x, y, _txt);