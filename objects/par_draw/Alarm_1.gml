if (percent < 0.01)
{
	if (bad_again)
	{
		scr_set_dialogue(dialogue.draw_cat_small_again);	
		draw_start();
	}
	else
	{
		scr_set_dialogue(dialogue.draw_cat_too_small);	
		draw_start();
		bad_again = true;
	}
}
else if (percent >= 0.8)
{
	scr_set_dialogue(dialogue.draw_cat_too_big);
	alarm[2] = 300;
}
else
{
	scr_set_dialogue(dialogue.draw_cat_good);
	alarm[2] = 420;	
}