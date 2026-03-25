if (spawn_avo)
{
	if (!instance_exists(obj_avocado))
	{
		if (alarm[5] == -1) alarm[5] = 40;
	}
}

if (avo_collected >= avo_target)
{
	avo_collected = 0;
	geese_win();	
}