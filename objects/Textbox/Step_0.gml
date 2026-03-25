if (!finished) {
    text_timer++;

    if (text_timer >= text_speed) {
        text_timer = 0;
        visible_chars++;

        if (visible_chars >= string_length(full_text)) {
            visible_chars = string_length(full_text);
            finished = true;
			
			if (talking_callback)
			{
				with (obj_brian) talking = false;
			}
			else
			{
				with (obj_spleeven) talking = false;	
			}
			
			if (callback != undefined){
				callback();
			}
        }
    }
}