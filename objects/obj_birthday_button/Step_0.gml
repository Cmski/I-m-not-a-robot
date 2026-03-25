if (!instance_exists(obj_birthday_goose)) exit;

if (appear)
{
	appear_percent += 1/60;

	appear_position = animcurve_channel_evaluate(appear_curve, appear_percent);

	image_xscale = appear_position * dir;
	image_yscale = appear_position;

	if (appear_percent > 1) appear = false;	
}
else
{
	if (pressed)
	{
		obj_birthday_goose.dir = dir;
	
		image_xscale = 0.95 * dir;
		image_yscale = 0.95;
	}
	else
	{
		image_xscale = 1 * dir;
		image_yscale = 1;
	}		
}