layer_set_visible("Physics", true);

dialogue = dialogue_physics_stacking();
scr_toggle_buttons(false);

global.allow_physics = false;
global.selected = noone;

draw_height = false;
min_y = 672;
tower_height_px = 0;
tower_height_m = 0;

items = [
obj_pumpkin,
obj_fan,
obj_dolphin,
obj_microwave,
obj_boomerang,
obj_traffic_cone,
obj_beach_ball,
obj_cheese,
obj_rocking_horse,
obj_rubber_duck
];

alarm[0] = 15;

function phyiscs_end(){
global.allow_physics = true;

audio_play_sound(snd_crowd_cheer, 50, false);

scr_fade_music();

alarm[5] = 120;
}