if (correct == correct_score)
{
	scr_set_dialogue(dialogue.select_stop_perfect);	
	alarm[3] = 300;
}
else if (correct > 0)
{
	scr_set_dialogue(dialogue.select_stop_good);
	alarm[3] = 330;
}
else
{
	scr_set_dialogue(dialogue.select_stop_bad);		
	alarm[3] = 330;
}