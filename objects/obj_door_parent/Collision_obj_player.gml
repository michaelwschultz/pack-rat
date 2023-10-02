/// @description Insert description here
if (!global.movement_locked) {
	global.room_start_x_location = variable_instance_get(id, "player_x");
	global.room_start_y_location = variable_instance_get(id, "player_y");
	
	if (variable_instance_exists(id, "facing_left")){
		global.room_start_facing_left = variable_instance_get(id, "facing_left");
	}
	
	room_goto(next_room);
}