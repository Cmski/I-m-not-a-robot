geese_spawn = [
{ pos_x: -50, pos_y: 50 },
{ pos_x: room_width + 50, pos_y: 80 },
{ pos_x: 200, pos_y: -50 },
{ pos_x: 600, pos_y: room_height + 50 },
{ pos_x: -50, pos_y: 500 },
{ pos_x: room_width + 50, pos_y: 400 },
{ pos_x: 700, pos_y: -50 },
{ pos_x: 100, pos_y: room_height + 50 },
{ pos_x: -50, pos_y: -50 },
{ pos_x: room_width + 50, pos_y: 800 },
]
num_geese = array_length(geese_spawn);
crt_geese = 0;

scr_toggle_buttons(false);
dialogue = dialogue_bread_goose();
alarm[0] = 1;

game_complete = false;
spawn_avo = false;
avo_collected = 0;
avo_target = 6;
spawn_radius = 100;
spawn_points = {
top_left: { pos_x: 300, pos_y: 200 },
bottom_left: { pos_x: 300, pos_y: 500 },
top_right: { pos_x: 800, pos_y: 200 },
bottom_right: { pos_x: 800, pos_y: 500 },
};

function spawn_avocado() {

var _x = mouse_x;
var _y = mouse_y;
var _w = room_width / 2;
var _h = room_height / 2;

var _spawn_x = 0;
var _spawn_y = 0;

if (_x <= _w)
{
	if (_y <= _h)
	{
		_spawn_x = spawn_points.bottom_right.pos_x;
		_spawn_y = spawn_points.bottom_right.pos_y;
	}
	else
	{
		_spawn_x = spawn_points.top_right.pos_x;
		_spawn_y = spawn_points.top_right.pos_y;	
	}
}
else
{
	if (_y <= _h)
	{
		_spawn_x = spawn_points.bottom_left.pos_x;
		_spawn_y = spawn_points.bottom_left.pos_y;
	}
	else
	{
		_spawn_x = spawn_points.top_left.pos_x;
		_spawn_y = spawn_points.top_left.pos_y;	
	}	
}

var _ranx = irandom_range(-spawn_radius, spawn_radius);
var _rany = irandom_range(-spawn_radius, spawn_radius);

instance_create_layer(_spawn_x + _ranx, _spawn_y + _rany, "AboveCaptcha", obj_avocado);	
}

function goose_cleanup(){
with (obj_goose) fleeing = true;

with (obj_bread) game_complete = true;

instance_destroy(obj_avocado);
instance_destroy(obj_goose_footprint);
game_complete = true;
spawn_avo = false;
}

function geese_fail(){
goose_cleanup();
scr_toggle_cursor(true);
instance_destroy(obj_bread);
scr_set_dialogue(dialogue.bread_goose_lose);
alarm[7] = 500;
}

function geese_win(){
goose_cleanup();	
scr_set_dialogue(dialogue.bread_goose_win);
alarm[7] = 500;
}