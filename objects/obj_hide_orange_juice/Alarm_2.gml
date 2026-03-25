if (correct == 3)
{
	scr_set_dialogue(dialogue.outro_perfect, function(){ alarm[3] = 120; });
}
else if (correct > 0)
{
	scr_set_dialogue(dialogue.outro_good, function(){ alarm[3] = 120; });
}
else
{
	scr_set_dialogue(dialogue.outro_bad, function(){ alarm[3] = 120; });
}