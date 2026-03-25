if (!fading) exit;

if (fade_white)
{
	if (global.television_brightness > 0)
	{
		global.television_brightness -= 0.01;		
	}
	else
	{
		fading = false;
		fade_white = false;	
		obj_netsurf.active = true;
	}	
}

if (fade_white_in)
{
	if (global.television_brightness < 1)
	{
		global.television_brightness += 0.01;		
	}
	else
	{
		scr_toggle_cursor(true);
		draw_black = false;
		fade_white_in = false;
		fade_white = true;	
		layer_set_visible("Netsurf", true);
	}
}
