if (!animate) exit;

percent += 1/120;

if (percent >= 1) animate = false;

if (percent >= 0.2)
{
	if (!sound_played && sound_to_play != undefined)
	{
		audio_play_sound(sound_to_play, 50, false);
		sound_played = true;
	}
}

position = animcurve_channel_evaluate(curve, percent);

mouth_offset = 10 * position;