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
		eye_index = 1;	
	}
	else
	{
		eye_index = 0;	
	}