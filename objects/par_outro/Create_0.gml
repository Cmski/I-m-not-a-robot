layer_set_visible("PopupIntro", true);
layer_set_visible("Welcome", true);
layer_set_visible("Brian", false);
layer_set_visible("Intro", true);
instance_destroy(obj_popup_cover);

scr_clear_dialogue();

fading = false;
alarm[0] = 180;