function scr_set_timer(_seconds, _callback = undefined, _sound = false){
	
with (Timer)
{
	play_sound = _sound;
	timer = _seconds * 60;
	callback = _callback;
}

if (_sound) audio_play_sound(snd_beep, 5, false);

}