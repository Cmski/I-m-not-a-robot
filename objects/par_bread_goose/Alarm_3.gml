///@desc Spawn Geese
if (crt_geese < num_geese)
{
	instance_create_layer(
	geese_spawn[crt_geese].pos_x, geese_spawn[crt_geese].pos_y, "AboveCaptcha", obj_goose);	
	
	crt_geese++;
	alarm[3] = 20;
}
else
{
	with (bread) alarm[1] = 10;
	
	alarm[4] = 360;
}