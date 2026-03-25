currently_playing = undefined;
next_playing = undefined;

function fadeout_current(_dur = 1000){
if (currently_playing != undefined)
{
	if (audio_is_playing(currently_playing))
	{		
		audio_sound_gain(currently_playing, 0, _dur);	
	}
}

alarm[0] = 60;
}

function fade_in(_snd, _gain, _dur){

switch (_snd)
{
	default:
		_gain = 0.15;
	break;
	
	case snd_music_1:
		_gain = 0.15
	break;
	
	case snd_music_2:
		_gain = 0.15
	break;
	
	case snd_music_beep:
		_gain = 0.2
	break;
	
	case snd_music_task:
		_gain = 0.2
	break;
}
	
audio_play_sound(_snd, 100, true);
audio_sound_gain(_snd, 0)
audio_sound_gain(_snd, _gain, 1000);

next_playing = _snd;

fadeout_current();
}