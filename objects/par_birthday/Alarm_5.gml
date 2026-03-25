///@desc Game Complete
instance_destroy(par_birthday_physics);

show_alpha = 1;
layer_set_visible("Birthday", false);

alarm[7] = 180;

with (obj_confetti_launcher) 
{
	alarm[0] = 60;	
}