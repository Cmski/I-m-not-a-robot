///@desc Game Start
global.allow_physics = true;
instance_create_layer(mouse_x, mouse_y, "Instances", obj_hand);
scr_toggle_cursor(false);
draw_height = true;

scr_play_music(snd_music_task);

with (Speaker) speak(snd_physics_monologue);

scr_set_timer(45, function(){
phyiscs_end();	
})

alarm[4] = 960;