if (currently_playing != undefined)
{
	if (audio_is_playing(currently_playing))
	{		
		audio_stop_sound(currently_playing);		
	}
}

if (next_playing != undefined) currently_playing = next_playing;
else currently_playing = undefined;