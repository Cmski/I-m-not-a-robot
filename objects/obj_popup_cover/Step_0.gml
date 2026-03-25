if (active)
{
	if (image_alpha < max_alpha)
	{
		image_alpha += alpha_int;	
	}
	else
	{
		active = false;	
	}
}