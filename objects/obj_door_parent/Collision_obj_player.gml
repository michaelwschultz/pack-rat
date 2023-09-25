/// @description Insert description here

player_x = variable_instance_get(id, "player_x");
player_y = variable_instance_get(id, "player_y");

if (!global.movement_locked) {
	// **********************************
	// TODO: this doesn't put the player in the correct spot.
	// We need to move them to the next room then set their position.
	// **********************************
	room_goto(next_room);
	
	x = player_x;
	y = player_y;
}