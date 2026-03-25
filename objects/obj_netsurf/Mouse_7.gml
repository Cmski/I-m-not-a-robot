if (active)
{	
	with (par_intro)
	{
		show_login();
		intro_popup_visible = true;
		alarm[0] = 1;
	}
	
	active = false;	
	
	instance_destroy();
}