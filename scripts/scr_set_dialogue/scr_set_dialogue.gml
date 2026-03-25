function scr_set_dialogue(_text, _callback = undefined, _brian = true){
	
if (_brian)
{
	with (obj_brian) talking = true;	
}
else
{
	with (obj_spleeven) talking = true;		
}
	
with (Textbox) 
{
	var _spd = _brian ? 3 : 4;
	reset_text();
	start_text(_text.text, _callback, _brian, _spd);
}

with (Speaker)
{
	speak(_text.audio);	
}

}