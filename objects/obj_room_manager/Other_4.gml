/// @description Insert description here

if (object_exists(obj_player)) {
	if(global.room_start_x_location and global.room_start_y_location) {
		show_debug_message("player " + string(obj_player.x) + " " + string(global.room_start_x_location))
		obj_player.x = global.room_start_x_location;
		obj_player.y = global.room_start_y_location;
		
		if (global.room_start_facing_left == true) {
			obj_player.image_xscale = -1;
		} else {
			obj_player.image_xscale = 1
		}
	}
}







