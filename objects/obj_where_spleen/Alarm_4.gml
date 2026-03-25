if (correct)
{
	scr_set_dialogue(dialogue.spleen_correct, function(){ alarm[5] = 120; });		
}
else if (guessed)
{
	scr_set_dialogue(dialogue.spleen_wrong, function(){ alarm[5] = 120; });	
}
else
{
	scr_set_dialogue(dialogue.where_no_answer, function(){ alarm[5] = 120; });	
}

