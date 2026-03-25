if (fading)
{
	if (global.television_brightness < 1)
	{
		global.television_brightness += 0.002;		
	}
	else
	{
		scr_clear_banner_text();
		with (Control) level_complete();
	}
}

if (entering)
{
	if (entering_duration <= 0)
	{
		entering = false;
		show_alpha = 0.4;
		
		audio_play_sound(snd_goose, 50, false);
	}
	else
	{
		entering_duration--;
		
		var t = entering_duration / entering_max;
		var r =  1 - (entering_duration / entering_max);
        show_alpha = lerp(0.4, 1, t);
		
		goose.phy_position_y = lerp(room_height + goose_height / 2, room_height - goose_height * 0.4, r);
	}
}

if (!spawning) exit;

if (spawn_timer <= 0)
{
	drop_item();
	spawn_timer = spawn_int;
}
else
{
	spawn_timer--;	
}

if (target_num <= 0)
{
	spawning = false;
	obj_birthday_goose.phy_speed_x = 0;
	instance_destroy(obj_birthday_button);
	alarm[5] = 90;
}