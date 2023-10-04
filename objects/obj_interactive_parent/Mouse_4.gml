/// @description 
var player_distance = distance_to_object(obj_player);
var current_layer = layer_get_name(layer);

if (((player_distance < pickup_distance) and !global.movement_locked) or ((player_distance < pickup_distance) and global.current_tool != -1)) {
	event_user(0);
	
	// move instance back to the interact layer
	if(current_layer == "Instances_outlined") {
		layer_add_instance("Instances_interact", id);
	}
}
