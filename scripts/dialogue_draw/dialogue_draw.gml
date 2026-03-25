function dialogue_draw(){
	
return {
	
draw_cat_intro:
{
	text: "To verify you're human, please draw a cat wearing a hat on the canvas using the pencil provided.",	
	audio: snd_draw_cat_intro,
},
draw_cat_too_small:
{
	text: "This is not a cat wearing a hat. Please take this task SERIOUSLY!!!",
	audio: snd_draw_cat_too_small
},
draw_cat_small_again:
{
	text: "This is still not a cat wearing a hat.",
	audio: snd_draw_cat_small_again
},
draw_cat_too_big:
{
	text: "Suspicious. Either you have far too much time on your hands, or you're a robot.",
	audio: snd_goose
},
draw_cat_good:
{
	text: "Now this is one for the fridge. I'll just take it over there right now. In the mean time, let's continue.",
	audio: snd_draw_cat_good
},

affirmation:
{
	text: "I think you've earned another affirmation. You're doing great!",
	audio: snd_draw_affirmation
},

}

}