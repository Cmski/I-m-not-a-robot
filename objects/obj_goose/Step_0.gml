depth = depth_val - y;

current_mvt = mvt_spd;

if (fleeing)
{
	current_mvt = 5;
	
	var _dir = -point_direction(x, y, room_width / 2, room_height / 2);
	target_x = lengthdir_x(current_mvt, _dir);
	target_y = lengthdir_x(current_mvt, _dir);
}

if (moving)
{
	var _dir = point_direction(x,y, target_x, target_y);
	var _d = angle_difference(_dir, image_angle);
	dir += median(-3, _d, 3);
	image_angle = dir;
}

hsp = lengthdir_x(current_mvt, dir);
vsp = lengthdir_y(current_mvt, dir);

x += hsp;
y += vsp;

if (fleeing) return;

//If at target
if ((x < target_x + range) and (x > target_x - range)) and ((y < target_y + range) and (y > target_y - range))
{
	target_x = irandom_range(min_x, max_x);
	target_y = irandom_range(min_y, max_y);	
}

if (chase_cooldown_timer <= 0)
{
	chasing = true;	
	chase_timer--;
	
	if (chase_timer <= 0)
	{
		chase_cooldown_timer = irandom_range(chase_timer_min, chase_timer_max);
	}
}
else
{
	if (distance_to_object(obj_bread) <= chase_bonus_range)
	{
		var _ran = irandom_range(0, 30);
		if (_ran == 0)
		{
			chasing = true;	
			chase_timer = 30;
		}
	}
	else
	{
		chase_cooldown_timer--;	
		chasing = false;
	
		chase_timer = irandom_range(chase_min, chase_max);
	}
}

if (chasing)
{
	target_x = mouse_x;
	target_y = mouse_y;
	
	var _ran = irandom_range(0, 120);
	if (_ran == 0)
	{
		mvt_spd = chase_mvt_boost;
		current_mvt = mvt_spd;	
	}
}
else
{
	var _ran = irandom_range(0, 90);
	if (_ran == 0)
	{
		target_x = irandom_range(min_x, max_x);
		target_y = irandom_range(min_y, max_y);		
	}

	var _ran = irandom_range(0, 120);
	if (_ran == 0)
	{
		mvt_spd = choose(1.2, 1.2, 1.8, 2, 2.4);
		current_mvt = mvt_spd;	
	}
}

//Footsteps
distance += current_mvt;

if (distance >= 10)
{
	var _ranx = irandom_range(-4, 4);
	var _rany = irandom_range(-4, 4);
	instance_create_depth(x+_ranx,y+_rany, depth + 200, obj_goose_footprint);	
		
	distance = 0;	
}

#region //Sounds

var _ran = irandom_range(0, 300);
if (_ran == 0)
{	
	var _snd = snd_goose;
	audio_sound_pitch(_snd, choose(0.85, 1, 1.15));
	audio_play_sound(_snd, 10, false);	
}

#endregion