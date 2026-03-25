var _scale = selected ? selected_scale : 1;

draw_sprite_ext(sprite_index, image_index, x, y, _scale, _scale, 0, c_white, 1);

if (selected)
{
	draw_sprite(spr_circle_tick_blue, 0, x - sprite_width / 2 + 12, y - sprite_height / 2 + 12);
}