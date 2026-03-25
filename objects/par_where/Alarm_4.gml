if (correct)
{
	scr_set_dialogue(dialogue.algeria_correct);	
	alarm[5] = 250;
}
else if (guessed)
{
	scr_set_dialogue(dialogue.algeria_wrong);
	alarm[5] = 350;
}
else
{
	scr_set_dialogue(dialogue.where_no_answer);	
	alarm[5] = 320;
}

