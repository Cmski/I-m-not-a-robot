if (global.name_typed)
{
	percent += 1/120;

	if (percent > 1) percent = 0;

	position = animcurve_channel_evaluate(curve, percent);

	image_xscale = 1 + 0.05 * position;
	image_yscale = image_xscale;
	image_alpha = 1;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 0.8;
}