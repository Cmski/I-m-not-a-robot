if (correct >= correct_score)
{
	scr_set_dialogue(dialogue.select_regret_perfect);	
}
else if (correct > 0)
{
	scr_set_dialogue(dialogue.select_regret_good);		
}
else
{
	scr_set_dialogue(dialogue.select_regret_bad);		
}

alarm[3] = 240;