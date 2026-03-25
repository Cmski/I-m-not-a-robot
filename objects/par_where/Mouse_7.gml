if (!active) exit;

if (my_flag == noone)
{
	my_flag = instance_create_depth(mouse_x, mouse_y, -1, obj_where_flag);	
	my_flag.sprite_index = flag;
	scr_toggle_active(true);
	guessed = true;
}
else
{
	my_flag.x = mouse_x;
	my_flag.y = mouse_y;
}