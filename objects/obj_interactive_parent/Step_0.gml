/// @description Insert description here
if (clicked and !event_played) {
	
	// set a timer to clear this event if the player doesn't reach the object in time
	if ( !timer_set) {
		alarm[0] = 60 * 10; // fps * 10  = 10 seconds
		timer_set = true;
	}
	
	player_distance = round(point_distance(x, y, obj_player.x, obj_player.y));
	
	if (!obj_player.moving and player_distance < 100) {
		event_played = true;
		clicked = false;
		timer_set = false;
		alarm[0] = -1; // turn off alarm
		event_user(0);
	}
}

