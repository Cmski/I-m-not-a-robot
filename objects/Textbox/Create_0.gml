text_speed = 3;
text_width = 1000;
callback = undefined;
talking_callback = 0;

reset_text();

function reset_text(){
full_text = "";
visible_chars = 0;
text_timer = 0;
finished = true;
}

function start_text(_text, _callback = undefined, _talking, _spd){
full_text = _text;
finished = false;
callback = _callback;
talking_callback = _talking;
text_speed = _spd;
}