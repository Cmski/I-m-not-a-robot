keyboard_string = "";
delete_timer = 2
max_name = 14;
text = "";
active = false;

blink = false;
blink_max_timer = 12;
blink_timer = blink_max_timer;

global.name = "";
global.name_typed = false;

function set_name(){
global.name = text;	
active = false;
text = "";	
delete_timer = -4;
keyboard_string = "";

instance_destroy();
}