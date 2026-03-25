min_x = 32;
max_x = room_width - 32;
min_y = 32;
max_y = room_height - 32;

mvt_spd = choose(1, 1.2, 1.2, 1.6, 2);
hsp = 0;
vsp = 0;

target_counter = 0;
targets = [
{
	tar_type: "pos",
	posx: 600,
	posy: 200,
	callback: undefined,
},
{
	tar_type: "pos",
	posx: 650,
	posy: 130,
	callback: undefined,
},
{
	tar_type: "pos",
	posx: 500,
	posy: 400,
	callback: function(){
		audio_play_sound(snd_goose, 10, false);
	},
},
{
	tar_type: "obj",
	obj: obj_beach_ball,
	callback: function(){
		obj_physics_goose.chasing = false;
		mvt_spd = 1.6;
		audio_play_sound(snd_goose, 10, false);
		
		with (obj_beach_ball)
		{
			if (distance_to_object(obj_physics_goose) <= 100)
			{
				var _pwr = 300;
				physics_apply_impulse(phy_position_x, phy_position_y, _pwr, -_pwr);
			}
		}
	},
},
{
	tar_type: "pos",
	posx: 650,
	posy: 300,
	callback: undefined,
},
{
	tar_type: "pos",
	posx: 460,
	posy: 430,
	callback: function(){
		obj_physics_goose.chasing = true;
	},
},
{
	tar_type: "obj",
	obj: obj_brian,
	callback: function(){
		with (Speaker) speak(snd_waa1);
		obj_brian.grabbed = true;
	},
},
{
	tar_type: "pos",
	posx: -150,
	posy: 200,
	callback: undefined,
},
{
	tar_type: "pos",
	posx: -150,
	posy: -150,
	callback: undefined,
},
{
	tar_type: "pos",
	posx: 600,
	posy: -150,
	callback: undefined,
	callback: function(){
		with (Speaker) speak(snd_waa2);
	},
},
{
	tar_type: "pos",
	posx: 1400,
	posy: 100,
	callback: function(){
		obj_brian.grabbed = false;
	},
},
];

function perform_callback(){	
if (targets[target_counter].callback != undefined)
{
	targets[target_counter].callback();		
}
}

function get_new_target_pos(){
if (target_counter >= array_length(targets)) 
{
	instance_destroy();
	exit;
}
	
var _tar = targets[target_counter];

if (_tar.tar_type == "pos")
{
	target_x = _tar.posx;
	target_y = _tar.posy;
}
else if (_tar.tar_type == "obj")
{
	if (instance_exists(_tar.obj))
	{
		target_x = _tar.obj.x;
		target_y = _tar.obj.y;	
	}
}
}

moving = true;
target_x = targets[target_counter].posx;
target_y = targets[target_counter].posy;
dir = 0;
chasing = false;
chase_spd = 5;

range = 5;
distance = 0;

depth_val = -1000;
depth = depth_val;