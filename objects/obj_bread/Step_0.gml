percent += 1/60;

if (percent > 1) percent = 0;

position = animcurve_channel_evaluate(curve, percent);

image_angle = 10 * position;

x = mouse_x;
y = mouse_y;

if (game_complete) return;

if (invul_timer > 0)
{
	invul_timer--;
	return;
}

if (place_meeting(x, y, obj_goose))
{
	part_particles_create(global.bread_system, x, y, global.bread_type, 8);
	audio_play_sound(snd_bread_hurt, 50, false);
	
	if (live > 0)
	{
		image_index++;
		live--;
		invul_timer = invul_max;
	}
	else
	{
		with (par_bread_goose) geese_fail();	
	}
}