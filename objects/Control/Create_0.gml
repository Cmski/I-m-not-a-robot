#region Level Stuff
current_level = 0;

levels = [
{ 
	lvl_name: "Intro", 
	controller: par_intro,
},
{ 
	lvl_name: "Brian Itrno", 
	controller: par_brian_intro,
},
{ 
	lvl_name: "Select Square Stop", 
	controller: obj_select_square_stop,
},
{ 
	lvl_name: "Select Square Regret", 
	controller: obj_select_square_regret,
},
{ 
	lvl_name: "Select Square Hat", 
	controller: obj_select_square_hat,
},
{ 
	lvl_name: "Hide Orange Juice", 
	controller: obj_hide_orange_juice,
},
{ 
	lvl_name: "Where Spleen", 
	controller: obj_where_spleen,
},
{ 
	lvl_name: "Draw Cat", 
	controller: par_draw,
},
{ 
	lvl_name: "Where Algeria", 
	controller: obj_where_algeria,
},
{ 
	lvl_name: "Bread Goose", 
	controller: par_bread_goose,
},
{ 
	lvl_name: "Describe", 
	controller: par_describe,
},
{ 
	lvl_name: "Physics Stacking", 
	controller: par_physics_stacking,
},
{ 
	lvl_name: "Baby Noise", 
	controller: par_baby,
},
{ 
	lvl_name: "Birthday", 
	controller: par_birthday,
},
{ 
	lvl_name: "Outro", 
	controller: par_outro,
},
];

num_levels = array_length(levels);
#endregion

randomise();
audio_group_load(effects);
audio_group_load(music);

verify_pos_x = 224;
verify_pos_y = 580;
var _btn = instance_create_layer(verify_pos_x, verify_pos_y, "Buttons", obj_verify_button);
_btn.visible = false;

brian_pos_x = verify_pos_x;
brian_pos_y = 320;
var _brian = instance_create_layer(brian_pos_x, brian_pos_y, "Brian", obj_brian);
_brian.visible = false;

timer_pos_x = verify_pos_x;
timer_pos_y = 460;
instance_create_layer(timer_pos_x, timer_pos_y, "Buttons", Timer);


instance_create_layer(brian_pos_x, brian_pos_y, "Brian", obj_spleeven);


start_level();

surf_screen = -1;
depth = -10000;
global.allow_physics = false;

window_set_cursor(cr_none);
instance_create_layer(mouse_x, mouse_y, "Instances", Cursor);

function start_level() {
	
var _lvl = levels[current_level];
instance_create_layer(0,0, "Captcha", _lvl.controller);
	
}

function clear_level() {

with (LevelObject) instance_destroy();
	
}

function restart_level() {

clear_level();
start_level();
	
}

function level_complete() {

current_level++;
clear_level();

if (current_level < num_levels) start_level();
	
}