if (!audio_is_playing(snd_bounce))
{
	var _snd = snd_bounce;
	audio_sound_pitch(_snd, choose(0.9, 1, 1.1));
	audio_play_sound(_snd, 1, false);
}