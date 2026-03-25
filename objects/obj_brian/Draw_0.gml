draw_sprite_ext(spr_brian_shadow, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);

draw_self();

draw_sprite_ext(spr_brian_mouth, mouth, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_sprite_ext(eye_sprite, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

if (blink_crt_time > blink_dur)
{
	draw_sprite_ext(spr_brian_pupil1, 0, x + pupil_left_x, y + pupil_left_y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(spr_brian_pupil2, 0, x + pupil_right_x, y + pupil_right_y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}