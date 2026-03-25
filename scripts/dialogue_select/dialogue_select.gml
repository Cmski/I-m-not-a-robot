function dialogue_select(){
	
return {

select_stop_intro:
{
	text: "To verify you're human, please select all squares that include stop signs.",
	audio: snd_select_stop_intro
},
select_stop_perfect: 
{
	text: "Great! Let's do another check.",
	audio: snd_select_stop_perfect
},
select_stop_good:
{
	text: "Close enough! Let's do another check.",
	audio: snd_select_stop_good
},
select_stop_bad:
{
	text: "Hmm. Something's not right here. Let's do another check.",
	audio: snd_select_stop_bad
},

select_regret_intro: 
{
	text: "To verify you're human, please select all squares that include regret.",
	audio: snd_select_regret_intro
},
select_regret_perfect: 
{
	text: "Great! Let's do one more check.",
	audio: snd_select_regret_perfect
},
select_regret_good: 
{
	text: "Close enough! Let's do one more check.",
	audio: snd_select_regret_good
},
select_regret_bad:
{
	text: "I 'regret' to inform you we'll need to do one more check.",
	audio: snd_select_regret_bad
},

select_hat_intro:
{
	text: "Finally, to verify you're human, please select all squares that are adjacent to items you would not consider a hat.",
	audio: snd_select_hat_intro
},
select_hat_outro:
{
	text: "Oh dear. That's not quite right, is it. How about we complete a few more easy captchas, just to verify that you're human.",
	audio: snd_select_hat_outro
},
	
}

}