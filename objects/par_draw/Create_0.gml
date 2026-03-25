draw_w = 790;
draw_h = 440;
draw_x = captchax - draw_w / 2;
draw_y = captchay - draw_h / 2;

draw_surf = -1;

last_x = 0;
last_y = 0;
was_drawing = false;

brush_size = 6;
brush_colour = c_black;
canvas_colour = #e7e7e7;

bad_again = false;

dialogue = dialogue_draw();

scr_toggle_buttons(true);
scr_toggle_active(false);
scr_set_callback(function(){
draw_complete();
})

alarm[0] = 1;

function draw_start(){
active = true;
scr_set_cursor(spr_cursor_pencil);
}

function draw_complete(){
active = false;
scr_toggle_active(false);
scr_brian_eye_reset();
	
percent = scr_get_canvas_percent(draw_surf, draw_w, draw_h);

alarm[1] = 30;
}