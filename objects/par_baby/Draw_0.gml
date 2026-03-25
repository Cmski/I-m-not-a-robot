if (show_audio)
{
	for (var i = 0; i < 4; i++)
	{
		var _selected = audio_selected == i ? 1 : 0;
		draw_sprite(spr_audio, _selected, audio_x, y_pos[i]);			
	}
}