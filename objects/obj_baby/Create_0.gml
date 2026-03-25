mouth_offset = 0;
curve = animcurve_get_channel(ac_mouth, "curve1");
percent = 0;
animate = false;
sound_played = false;
sound_to_play = undefined;

function animate_mouth(){
percent = 0;
animate = true;
}