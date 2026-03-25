draw_self();

if (avo_collected > 0)
{
	draw_sprite_ext(
	spr_guac, 0, x, y, 1, avo_collected * 2, image_angle, c_white, 1);	
}

draw_sprite_ext(
spr_bread_face, 0, x, y, 1, 1, image_angle, c_white, 1);