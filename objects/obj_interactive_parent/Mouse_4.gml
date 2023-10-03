/// @description 
var player_distance = distance_to_object(obj_player);

if (player_distance < pickup_distance) {
	event_user(0);
}

