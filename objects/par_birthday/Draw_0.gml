if (show_image)
{
	draw_sprite_ext(spr_birthday, 0, image_x, image_y, 1, 1, 0, c_white, show_alpha);
	scr_set_banner_text("Broccoli Eaten: " + string(broccoli_eaten));
}

