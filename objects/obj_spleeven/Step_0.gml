percent += 1/140;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

hover_offset = 2 * position;

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
		eye_sprite = spr_spleeven_eyes_closed;		
	}
	else
	{
		eye_sprite = spr_spleeven_eyes_open;		
	}
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