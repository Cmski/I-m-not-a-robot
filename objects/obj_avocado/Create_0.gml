dark_amount = 0;
darkening = false;

alarm[0] = 150;

depth = -2000;

curve = animcurve_get_channel(ac_shake, "curve1");
percent = 0;

audio_play_sound(snd_bubble, 10, false);