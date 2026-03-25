if (draw_black)
{
	draw_set_colour(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
}

if (please_click)
{
	draw_set_colour(c_white);
	draw_set_font(fnt_banner);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, room_height / 2, "CLICK TO REBOOT");
}