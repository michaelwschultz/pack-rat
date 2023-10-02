/// @description Place character

if (!layer_exists("Instances_player")) {
	show_debug_message("Don't forget to add an instance layer with the name Instance_player to each room you want to use the player.");
} else {
	// Add player to the room
	instance_create_layer(global.room_start_x_location, global.room_start_y_location, "Instances_player", obj_player);
	unlock_movement();
	// Set players direction based on global variable
	if (variable_global_exists("room_start_facing_left") and global.room_start_facing_left == true) {
		obj_player.image_xscale = -1;
	} else {
		obj_player.image_xscale = 1
	}
}