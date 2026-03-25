depth = depth_val - y;	

if (moving)
{
	var _dir = point_direction(x,y, target_x, target_y);
	var _d = angle_difference(_dir, image_angle);
	dir += median(-4, _d, 4);
	image_angle = dir;
}

hsp = lengthdir_x(mvt_spd, dir);
vsp = lengthdir_y(mvt_spd, dir);

x += hsp;
y += vsp;

//If at target
if ((x < target_x + range) and (x > target_x - range)) and ((y < target_y + range) and (y > target_y - range))
{
	perform_callback();
	target_counter++;
	get_new_target_pos();
}

if (chasing)
{
	mvt_spd = chase_spd;
}
else
{
	var _ran = irandom_range(0, 40);
	if (_ran == 0)
	{
		mvt_spd = choose(1.8, 2.0, 2.2, 2.4);	
	}
}

//Footsteps
distance += mvt_spd;

if (distance >= 10)
{
	var _ranx = irandom_range(-4, 4);
	var _rany = irandom_range(-4, 4);
	instance_create_depth(x+_ranx,y+_rany, depth + 200, obj_goose_footprint);	
		
	distance = 0;	
}