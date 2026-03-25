if (appear)
{
	appear_percent += 1/60;

	appear_position = animcurve_channel_evaluate(appear_curve, appear_percent);

	image_xscale = appear_position * scale;
	image_yscale = appear_position * scale;

	if (appear_percent > 1) appear = false;	
}

if (grabbed)
{
	if (instance_exists(obj_physics_goose))
	{
		mouth = 1;
		x = obj_physics_goose.x;
		y = obj_physics_goose.y;
		exit;
	}
}

percent += 1/120;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_angle = 3 * position;

if (blinking)
{
	if (blink_crt_time <= 0)
	{
		blink_crt_time = irandom_range(blink_min, blink_max);
	}
	else
	{
		blink_crt_time--;
	}

	if (blink_crt_time <= blink_dur)
	{
		eye_sprite = spr_brian_eyes_closed;		
	}
	else
	{
		eye_sprite = spr_brian_eyes_open;		
	}
}
else
{
	eye_sprite = spr_brian_eyes_open;
	blink_crt_time = blink_max;
}

if (pupil_slide)
{
	if (pupil_left_x > pupil_left_x_max) pupil_left_x -= pupil_speed_x;
	if (pupil_right_x < pupil_right_x_max) pupil_right_x += pupil_speed_x;
}
else
{
	pupil_left_x = 0;
	pupil_left_y = 0;
	pupil_right_x = 0;
	pupil_right_y = 0;	
}

if (talking)
{
	if (talk_timer > 0)
	{
		talk_timer--;	
	}
	else
	{
		talk_timer = talk_max_timer;
		mouth = mouth == 1 ? 0 : 1;
	}
}
else
{
	talk_timer = talk_max_timer;
	mouth = 0;	
}