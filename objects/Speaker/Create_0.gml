current_voice = undefined;

function speak(_snd){
	
if (current_voice != undefined)
{
	audio_stop_sound(current_voice);	
}

audio_play_sound(_snd, 100, false);
current_voice = _snd;
	
}