if (timer > 0)
{
    timer--;

    if (timer mod 60 == 0)
    {
        if (play_sound) audio_play_sound(snd_beep, 15, false);
    }
}
else
{	
	if (callback != undefined)
	{
		if (play_sound) audio_play_sound(snd_beep, 15, false);
		callback();
		callback = undefined;
	}
}