fading = true;
draw_black = true;
fade_white_in = false;
fade_white = false;
please_click = true;

scr_toggle_cursor(false);
layer_set_visible("Netsurf", false);
layer_set_visible("Intro", false);
layer_set_visible("PopupIntro", false);
layer_set_visible("PopupIntroLogin", false);
layer_set_visible("CaptchaBox", false);
layer_set_visible("CaptchaIntro", false);
layer_set_visible("PopupBackground", false);
layer_set_visible("Welcome", false);

instance_create_layer(
room_width / 2, room_height / 2, "Netsurf", obj_netsurf);

intro_popup_visible = false;

function show_login(){
obj_text_box.active = true;
layer_set_visible("Intro", true);
layer_set_visible("PopupIntro", true);
layer_set_visible("PopupIntroLogin", true);
}

function hide_login(){
layer_set_visible("PopupIntroLogin", false);	

alarm[2] = 30;
}

function go_to_game(){
layer_set_visible("Intro", false);
layer_set_visible("PopupIntro", false);
layer_set_visible("PopupIntroLogin", false);
layer_set_visible("CaptchaBox", false);
layer_set_visible("CaptchaIntro", false);
layer_set_visible("PopupBackground", true);
layer_set_visible("Netsurf", false);

with (Control) level_complete();
}