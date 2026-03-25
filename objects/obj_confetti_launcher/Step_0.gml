if (crt_confetti > 0)
{		
	var _c = make_color_rgb(irandom(255),irandom(255),irandom(255));
	
	var _x = goose ? obj_birthday_goose.x : room_width;
	var _y = goose ? obj_birthday_goose.y : room_height;
	
	part_particles_create_colour(global.confetti_system, _x, _y, global.confetti_type, _c, 4);
		
	crt_confetti--;
}

if (crt_broccoli > 0)
{	
	var _x = obj_birthday_goose.x;
	var _y = obj_birthday_goose.y;

	part_particles_create(global.broccoli_system, _x, _y, global.broccoli_type, 4);
		
	crt_broccoli--;
}