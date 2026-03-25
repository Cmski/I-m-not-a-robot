if (!global.allow_physics) exit;

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

global.selected = id;

if (global.grab_joint != -1) {
    physics_joint_delete(global.grab_joint);
    global.grab_joint = -1;
}

global.grab_joint = physics_joint_revolute_create(
    obj_hand, // inst1
    id,                  // inst2
    mx, my,              // world anchor at click point
    0, 0,                // angle limits
    false,               // angle limit off
    0,                   // max motor torque
    0,                   // motor speed
    false,               // motor off
    false                // no collision between the two
);

audio_play_sound(snd_bubble, 10, false);	