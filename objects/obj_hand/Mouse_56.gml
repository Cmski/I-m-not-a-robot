pressed = false;

 if (global.grab_joint != -1) {
    physics_joint_delete(global.grab_joint);
    global.grab_joint = -1;
}

global.selected = noone;