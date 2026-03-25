if (darkening)
{
	dark_amount += 0.01;
	
	image_xscale -= 0.01;
	image_yscale = image_xscale;

	dark_amount = clamp(dark_amount, 0, 1);
	
	if (dark_amount >= 0.8) instance_destroy();
}

percent += 1/60;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_angle = 5 * position;

if (place_meeting(x, y, obj_bread))
{
	audio_play_sound(snd_eat, 50, false);
	par_bread_goose.avo_collected++;
	obj_bread.avo_collected++;
	instance_destroy();	
}