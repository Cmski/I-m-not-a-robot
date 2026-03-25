appear = true;
visible = true;

if (duck) audio_play_sound(snd_duck, 10, false);
else
{
	var _snd = snd_bubble;
	audio_sound_pitch(_snd, 1 + 0.1 * index);
	audio_play_sound(_snd, 10, false);		
}