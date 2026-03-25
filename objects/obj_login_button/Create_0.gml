curve = animcurve_get_channel(ac_shake, "curve1");
percent = 0;

active = true;

function login_clicked(){
with (par_intro)
{
	hide_login();	
}

with (obj_text_box)
{
	set_name();	
}

instance_destroy();
}