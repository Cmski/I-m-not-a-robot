if (place_meeting(phy_position_x, phy_position_y, obj_button_destroy)) instance_destroy();

if (place_meeting(phy_position_x, phy_position_y, obj_birthday_goose_destroy))
{
	if (par_birthday.spawning)
	{
		with (obj_confetti_launcher) goose_broccoli();
	
		audio_play_sound(snd_eat, 10, false);
		audio_play_sound(snd_crowd_boo, 50, false);
		par_birthday.broccoli_eaten++;
	}
	instance_destroy();
}